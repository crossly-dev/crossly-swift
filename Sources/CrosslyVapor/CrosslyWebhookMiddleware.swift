// Vapor middleware for Crossly webhooks: product `CrosslyVapor`, a separate target so `Crossly` and
// `CrosslyWebhooks` never pull Vapor into an app that does not use it.
//
//   app.grouped(CrosslyWebhookMiddleware(secret: Environment.get("CROSSLY_WEBHOOK_SECRET")!))
//      .post("webhooks", "crossly") { req async throws -> HTTPStatus in
//          let event = try req.crosslyWebhookEvent()      // verified; the raw JSON is req.crosslyWebhookBody
//          print(event["type"] ?? "")
//          return .noContent
//      }
//
// Hand-written (tools/sdk-repo/extras/swift/vapor in the Crossly monorepo); seeded into Sources/CrosslyVapor.
import Foundation
import Vapor
import CrosslyWebhooks

/// Verifies `Crossly-Signature` over the exact bytes received, before any route decodes them. A request that does
/// not verify gets 400 with the stable reason (`bad_signature`, `timestamp_out_of_tolerance`, `malformed_header`);
/// an empty secret is a server misconfiguration and gets 500.
public struct CrosslyWebhookMiddleware: AsyncMiddleware {
    public let secret: String
    public let toleranceSeconds: Int
    public let maxBodyBytes: Int

    public init(secret: String, toleranceSeconds: Int = CrosslyWebhooks.defaultToleranceSeconds, maxBodyBytes: Int = 1 << 20) {
        self.secret = secret
        self.toleranceSeconds = toleranceSeconds
        self.maxBodyBytes = maxBodyBytes
    }

    public func respond(to request: Request, chainingTo next: AsyncResponder) async throws -> Response {
        let buffer: ByteBuffer?
        if let collected = request.body.data {
            buffer = collected
        } else {
            buffer = try await request.body.collect(max: maxBodyBytes).get()
        }
        let raw = buffer.map { Data($0.readableBytesView) } ?? Data()
        do {
            let body = try CrosslyWebhooks.verify(
                rawBody: raw,
                signatureHeader: request.headers.first(name: "Crossly-Signature"),
                secret: secret,
                toleranceSeconds: toleranceSeconds)
            request.storage[CrosslyWebhookBodyKey.self] = body
        } catch let error as CrosslyWebhooks.VerificationError {
            throw Abort(error.reason == "missing_secret" ? .internalServerError : .badRequest, reason: error.reason)
        }
        return try await next.respond(to: request)
    }
}

/// Where the middleware leaves the verified body.
public struct CrosslyWebhookBodyKey: StorageKey {
    public typealias Value = String
}

extension Request {
    /// The verified raw body, set by `CrosslyWebhookMiddleware`; nil on a route the middleware does not cover.
    public var crosslyWebhookBody: String? { storage[CrosslyWebhookBodyKey.self] }

    /// The verified event as JSON (`id`, `type`, `created`, `data`). Throws 400 when the middleware did not run.
    public func crosslyWebhookEvent() throws -> [String: Any] {
        guard let body = crosslyWebhookBody,
              let event = try JSONSerialization.jsonObject(with: Data(body.utf8)) as? [String: Any] else {
            throw Abort(.badRequest, reason: "not a verified Crossly webhook")
        }
        return event
    }
}
