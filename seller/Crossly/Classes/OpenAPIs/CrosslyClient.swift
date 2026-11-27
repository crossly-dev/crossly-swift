// CrosslyClient.swift
//
// Hand-written (tools/sdk-repo/extras/swift in the Crossly monorepo), vendored into the generated package on every
// release. It sits on top of the generated API classes and changes none of them:
//
//   let crossly = CrosslyClient(token: "crossly_pat_…")
//   let page = try await crossly.send { ListingsAPI.listListings(page: 1, limit: 25, completion: $0) }
//
// What it adds to every generated call (it installs a RequestBuilderFactory, so calls made without `send` get the
// same behaviour):
//   - the bearer token, a `crossly-swift/<version>` User-Agent and a request timeout
//   - retries with exponential backoff and jitter, honouring Retry-After, on 429 (every method) and on 5xx / network
//     errors (GET, HEAD, PUT, DELETE; POST and PATCH only with `retryWrites`)
//   - an Idempotency-Key on every POST, PUT, PATCH and DELETE, the same on each retry of that call
//   - `CrosslyError`, with the API's `code`, `message`, `details` and `correlationId`
//   - async/await (`send`) and auto-pagination (`paginate`)
//
// The generated client keeps its configuration in statics, so one CrosslyClient configures the whole process.
import Foundation

/// How a `CrosslyClient` talks to the API.
public struct CrosslyClientOptions {
    /// API root. Defaults to the one in the spec (https://crossly.net/api).
    public var baseURL: String?
    /// Seconds before a single attempt times out.
    public var timeout: TimeInterval
    /// Retries after the first attempt (0 turns retrying off).
    public var maxRetries: Int
    /// First backoff in seconds; doubles per retry, with jitter, up to `maxBackoff`.
    public var initialBackoff: TimeInterval
    /// Longest wait between attempts, Retry-After included.
    public var maxBackoff: TimeInterval
    /// Also retry POST and PATCH on 5xx and network errors. Off by default: only some endpoints deduplicate on the
    /// Idempotency-Key, so a retried create could create twice. 429 is always retried (the request never ran).
    public var retryWrites: Bool
    /// Replaces the default `crossly-swift/<version>` User-Agent.
    public var userAgent: String?

    public init(
        baseURL: String? = nil,
        timeout: TimeInterval = 30,
        maxRetries: Int = 3,
        initialBackoff: TimeInterval = 0.5,
        maxBackoff: TimeInterval = 30,
        retryWrites: Bool = false,
        userAgent: String? = nil
    ) {
        self.baseURL = baseURL
        self.timeout = timeout
        self.maxRetries = maxRetries
        self.initialBackoff = initialBackoff
        self.maxBackoff = maxBackoff
        self.retryWrites = retryWrites
        self.userAgent = userAgent
    }
}

/// A failed call: the API's `{ "error": { "code", "message", "details" }, "correlationId" }`, or a transport failure.
public struct CrosslyError: Error, CustomStringConvertible {
    /// HTTP status; negative for a transport failure (-1 network, -2 no HTTP response).
    public let status: Int
    /// The API's machine-readable `error.code` (e.g. `not_found`, `rate_limited`), when it sent one.
    public let code: String?
    public let message: String
    /// The API's `error.details`, as decoded JSON.
    public let details: Any?
    /// Quote this to support: it threads the request back to server logs.
    public let correlationId: String?
    /// Seconds the API asked to wait (Retry-After), on a 429.
    public let retryAfter: TimeInterval?
    /// The raw response body.
    public let body: Data?
    /// The error the generated client raised.
    public let underlying: Error?

    public var description: String {
        var s = "CrosslyError \(status)"
        if let code = code { s += " \(code)" }
        s += ": \(message)"
        if let id = correlationId { s += " (correlationId \(id))" }
        return s
    }

    public init(_ error: Error) {
        if let e = error as? CrosslyError {
            self = e
            return
        }
        guard case let ErrorResponse.error(status, data, response, underlying) = error else {
            self.init(status: -1, code: nil, message: String(describing: error), details: nil, correlationId: nil,
                      retryAfter: nil, body: nil, underlying: error)
            return
        }
        let json = data.flatMap { try? JSONSerialization.jsonObject(with: $0) } as? [String: Any]
        let err = json?["error"] as? [String: Any]
        let http = response as? HTTPURLResponse
        let text = data.flatMap { String(data: $0, encoding: .utf8) }
        self.init(
            status: status,
            code: err?["code"] as? String,
            message: (err?["message"] as? String) ?? (json?["error"] as? String) ?? text.map { String($0.prefix(500)) }
                ?? underlying.localizedDescription,
            details: err?["details"],
            correlationId: (json?["correlationId"] as? String) ?? http?.value(forHTTPHeaderField: "X-Correlation-Id"),
            retryAfter: http?.value(forHTTPHeaderField: "Retry-After").flatMap(CrosslyClient.parseRetryAfter),
            body: data,
            underlying: underlying)
    }

    public init(status: Int, code: String?, message: String, details: Any?, correlationId: String?,
                retryAfter: TimeInterval?, body: Data?, underlying: Error?) {
        self.status = status
        self.code = code
        self.message = message
        self.details = details
        self.correlationId = correlationId
        self.retryAfter = retryAfter
        self.body = body
        self.underlying = underlying
    }
}

/// Configures the generated client and adds async/await, retries, pagination and typed errors.
public final class CrosslyClient {
    /// The options of the most recently created client (the generated client's configuration is process-wide).
    public private(set) static var options = CrosslyClientOptions()

    public let options: CrosslyClientOptions

    /// - Parameter token: a Personal Access Token (`crossly_pat_…`) or an OAuth token (`crossly_oat_…`).
    public init(token: String, options: CrosslyClientOptions = CrosslyClientOptions()) {
        self.options = options
        CrosslyClient.options = options
        if let base = options.baseURL { CrosslyGeneratedAPI.basePath = base }
        CrosslyGeneratedAPI.customHeaders["Authorization"] = "Bearer \(token)"
        CrosslyGeneratedAPI.customHeaders["User-Agent"] = options.userAgent ?? "crossly-swift/\(CrosslySDKVersion.current)"
        CrosslyGeneratedAPI.requestBuilderFactory = CrosslyRequestBuilderFactory()
        // Completion handlers run off the main queue, so `send` works from any context; hop to the main actor
        // yourself before touching UI.
        CrosslyGeneratedAPI.apiResponseQueue = DispatchQueue.global(qos: .userInitiated)
    }

    /// Await one generated call:
    ///
    ///     let order = try await crossly.send { OrdersAPI.getOrder(id: id, completion: $0) }
    ///
    /// Throws `CrosslyError`.
    public func send<T>(_ operation: (@escaping (T?, Error?) -> Void) -> RequestTask) async throws -> T {
        try await withCheckedThrowingContinuation { (continuation: CheckedContinuation<T, Error>) in
            _ = operation { data, error in
                if let error = error {
                    continuation.resume(throwing: CrosslyError(error))
                } else if let data = data {
                    continuation.resume(returning: data)
                } else if let empty = (() as Any) as? T {
                    continuation.resume(returning: empty)
                } else {
                    continuation.resume(throwing: CrosslyError(
                        status: -2, code: nil, message: "The API returned no body.", details: nil,
                        correlationId: nil, retryAfter: nil, body: nil, underlying: nil))
                }
            }
        }
    }

    /// Every row of a paged list endpoint, fetching pages as you iterate:
    ///
    ///     for try await listing in crossly.paginate(
    ///         { ListingsAPI.listListings(page: $0, limit: $1, completion: $2) },
    ///         items: { $0.data }, pagination: { $0.pagination }) {
    ///         print(listing.id)
    ///     }
    ///
    /// Stops at `pagination.totalPages` when the API counts, else at the first short page; an endpoint that sends no
    /// `pagination` returned everything in one page.
    public func paginate<Page, Item>(
        limit: Int = 100,
        _ fetch: @escaping (_ page: Int, _ limit: Int, _ completion: @escaping (Page?, Error?) -> Void) -> RequestTask,
        items: @escaping (Page) -> [Item],
        pagination: @escaping (Page) -> Pagination?
    ) -> AsyncThrowingStream<Item, Error> {
        AsyncThrowingStream { continuation in
            let task = Task {
                do {
                    var page = 1
                    while !Task.isCancelled {
                        let current = page
                        let result: Page = try await self.send { fetch(current, limit, $0) }
                        let rows = items(result)
                        for row in rows { continuation.yield(row) }
                        guard !rows.isEmpty, let p = pagination(result) else { break }
                        if let total = p.totalPages {
                            if current >= total { break }
                        } else if rows.count < limit {
                            break
                        }
                        page += 1
                    }
                    continuation.finish()
                } catch {
                    continuation.finish(throwing: error)
                }
            }
            continuation.onTermination = { _ in task.cancel() }
        }
    }

    // MARK: - retry policy (used by the request builders below)

    /// Seconds from a Retry-After header: delta-seconds or an HTTP date.
    public static func parseRetryAfter(_ value: String) -> TimeInterval? {
        let v = value.trimmingCharacters(in: .whitespaces)
        if let seconds = Double(v) { return max(0, seconds) }
        let f = DateFormatter()
        f.locale = Locale(identifier: "en_US_POSIX")
        f.timeZone = TimeZone(identifier: "GMT")
        f.dateFormat = "EEE, dd MMM yyyy HH:mm:ss zzz"
        return f.date(from: v).map { max(0, $0.timeIntervalSinceNow) }
    }

    static func retryDelay<T>(for result: Swift.Result<Response<T>, ErrorResponse>, method: String, attempt: Int) -> TimeInterval? {
        guard case let .failure(.error(status, _, response, error)) = result else { return nil }
        let o = options
        guard attempt < o.maxRetries else { return nil }
        let write = ["POST", "PATCH"].contains(method.uppercased())
        let transient: Bool
        if status == 429 {
            transient = true
        } else if [500, 502, 503, 504].contains(status) {
            transient = !write || o.retryWrites
        } else if status == -1, let urlError = error as? URLError, urlError.code != .cancelled {
            transient = !write || o.retryWrites
        } else {
            transient = false
        }
        guard transient else { return nil }
        let http = response as? HTTPURLResponse
        if let wait = http?.value(forHTTPHeaderField: "Retry-After").flatMap(parseRetryAfter) {
            return min(wait, o.maxBackoff)
        }
        let ceiling = min(o.maxBackoff, o.initialBackoff * pow(2, Double(attempt)))
        return Double.random(in: (ceiling / 2)...max(ceiling / 2, ceiling))
    }

    static func prepare(_ request: inout URLRequest, idempotencyKey: String) {
        request.timeoutInterval = options.timeout
        let method = (request.httpMethod ?? "GET").uppercased()
        if ["POST", "PUT", "PATCH", "DELETE"].contains(method), request.value(forHTTPHeaderField: "Idempotency-Key") == nil {
            request.setValue(idempotencyKey, forHTTPHeaderField: "Idempotency-Key")
        }
    }
}

final class CrosslyRequestBuilderFactory: RequestBuilderFactory {
    func getNonDecodableBuilder<T>() -> RequestBuilder<T>.Type { CrosslyRequestBuilder<T>.self }
    func getBuilder<T: Decodable>() -> RequestBuilder<T>.Type { CrosslyDecodableRequestBuilder<T>.self }
}

final class CrosslyRequestBuilder<T>: URLSessionRequestBuilder<T> {
    private let idempotencyKey = UUID().uuidString

    required init(method: String, URLString: String, parameters: [String: Any]?, headers: [String: String] = [:]) {
        super.init(method: method, URLString: URLString, parameters: parameters, headers: headers)
    }

    override func createURLRequest(urlSession: URLSession, method: HTTPMethod, encoding: ParameterEncoding, headers: [String: String]) throws -> URLRequest {
        var request = try super.createURLRequest(urlSession: urlSession, method: method, encoding: encoding, headers: headers)
        CrosslyClient.prepare(&request, idempotencyKey: idempotencyKey)
        return request
    }

    @discardableResult
    override func execute(_ apiResponseQueue: DispatchQueue = CrosslyGeneratedAPI.apiResponseQueue, _ completion: @escaping (_ result: Swift.Result<Response<T>, ErrorResponse>) -> Void) -> RequestTask {
        attempt(apiResponseQueue, 0, completion)
        return requestTask
    }

    private func attempt(_ queue: DispatchQueue, _ n: Int, _ completion: @escaping (Swift.Result<Response<T>, ErrorResponse>) -> Void) {
        super.execute(queue) { result in
            if let delay = CrosslyClient.retryDelay(for: result, method: self.method, attempt: n) {
                DispatchQueue.global().asyncAfter(deadline: .now() + delay) { self.attempt(queue, n + 1, completion) }
            } else {
                completion(result)
            }
        }
    }
}

final class CrosslyDecodableRequestBuilder<T: Decodable>: URLSessionDecodableRequestBuilder<T> {
    private let idempotencyKey = UUID().uuidString

    required init(method: String, URLString: String, parameters: [String: Any]?, headers: [String: String] = [:]) {
        super.init(method: method, URLString: URLString, parameters: parameters, headers: headers)
    }

    override func createURLRequest(urlSession: URLSession, method: HTTPMethod, encoding: ParameterEncoding, headers: [String: String]) throws -> URLRequest {
        var request = try super.createURLRequest(urlSession: urlSession, method: method, encoding: encoding, headers: headers)
        CrosslyClient.prepare(&request, idempotencyKey: idempotencyKey)
        return request
    }

    @discardableResult
    override func execute(_ apiResponseQueue: DispatchQueue = CrosslyGeneratedAPI.apiResponseQueue, _ completion: @escaping (_ result: Swift.Result<Response<T>, ErrorResponse>) -> Void) -> RequestTask {
        attempt(apiResponseQueue, 0, completion)
        return requestTask
    }

    private func attempt(_ queue: DispatchQueue, _ n: Int, _ completion: @escaping (Swift.Result<Response<T>, ErrorResponse>) -> Void) {
        super.execute(queue) { result in
            if let delay = CrosslyClient.retryDelay(for: result, method: self.method, attempt: n) {
                DispatchQueue.global().asyncAfter(deadline: .now() + delay) { self.attempt(queue, n + 1, completion) }
            } else {
                completion(result)
            }
        }
    }
}
