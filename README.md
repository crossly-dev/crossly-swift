# Crossly Swift SDK

[![ci](https://github.com/crossly-dev/crossly-swift/actions/workflows/ci.yml/badge.svg)](https://github.com/crossly-dev/crossly-swift/actions/workflows/ci.yml) [![release](https://github.com/crossly-dev/crossly-swift/actions/workflows/release.yml/badge.svg)](https://github.com/crossly-dev/crossly-swift/actions/workflows/release.yml) [![license](https://img.shields.io/badge/license-MIT-blue)](LICENSE)

Official Swift clients for the [Crossly](https://crossly.net) API: list once and sell across every marketplace, read
orders, manage inventory, and receive signed webhooks. Generated from the public OpenAPI specs and released
automatically when they change, with signed build provenance.

## Install

| client | for | install |
|---|---|---|
| seller | your store: listings, crossposting, orders, analytics | `.package(url: "https://github.com/crossly-dev/crossly-swift", from: "0.2.0") + product "Crossly"` |
| buyer | shopping: cart, orders, wishlists, offers, cashback | `.package(url: "https://github.com/crossly-dev/crossly-swift", from: "0.2.0") + product "CrosslyBuyer"` |

## Two clients, two credentials

| client | credential |
|---|---|
| seller | a Personal Access Token (`crossly_pat_…`, Settings → Developer) or a seller OAuth token |
| buyer | a buyer OAuth token (`crossly_oat_…`) with `buyer:*` scopes |

They are not interchangeable: a seller token is refused by the buyer API and the reverse, even for the same
Crossly account. A 401 from a call that looks right usually means the other client's token.

## First call

```swift
// Package.swift
.package(url: "https://github.com/crossly-dev/crossly-swift", from: "0.2.0"),
// target dependencies
.product(name: "Crossly", package: "crossly-swift"),
```

```swift
import Crossly

let crossly = CrosslyClient(token: ProcessInfo.processInfo.environment["CROSSLY_TOKEN"]!)  // crossly_pat_…
let page = try await crossly.send { ListingsAPI.listListings(page: 1, limit: 25, completion: $0) }
for item in page.data {
    print(item.id, item.title ?? "", item.status)
}
```

`CrosslyClient` configures the generated client (`CrosslyAPI.basePath`, `CrosslyAPI.customHeaders`), which keeps
its configuration in statics: one client per process. The generated completion-handler methods
(`ListingsAPI.listListings(page:limit:completion:)`) work too and get the same retries.

List calls return `{ data, pagination }` and page with `page` and `limit`. Money fields named `…_cents` are
integer cents. A failed call throws `CrosslyError` (from `send`/`paginate`) with `status`, `code`, `message`, `details`, `correlationId` and `retryAfter`; the raw generated error is `ErrorResponse.error(status, body, response, error)`.

## Webhooks

Crossly signs every webhook with `Crossly-Signature: t=<unix>,v1=<hex HMAC-SHA256 of "t.body">`. The verifier
ships in the seller and buyer packages and checks the signature in constant time, rejects a timestamp more than
five minutes old, and returns the parsed event:

```swift
import CrosslyWebhooks

// rawBody: the exact bytes received (Vapor: req.body.data), before any JSON decoding
do {
    let body = try CrosslyWebhooks.verify(
        rawBody: rawBody,
        signatureHeader: headers["Crossly-Signature"],
        secret: ProcessInfo.processInfo.environment["CROSSLY_WEBHOOK_SECRET"]!)
    // body is the verified JSON text
} catch let error as CrosslyWebhooks.VerificationError {
    // error.reason: bad_signature | timestamp_out_of_tolerance | malformed_header | missing_secret → 400
}
```

Verify the raw bytes, not a re-serialised body. `webhooks/` holds the same verifier on its own, with the shared
test vectors every language's port is checked against on each build.

## Retries, timeouts, pagination

`CrosslyClientOptions` sets them: `timeout` (30 s per attempt), `maxRetries` (3), `initialBackoff` / `maxBackoff`
(exponential with jitter; a `Retry-After` header wins), `retryWrites`, `userAgent` (default
`crossly-swift/<version>`). 429 is retried on every method; 5xx and network errors on GET, HEAD, PUT and DELETE,
and on POST and PATCH only with `retryWrites: true`. Every POST, PUT, PATCH and DELETE carries an
`Idempotency-Key`, the same on each retry of that call.

```swift
let crossly = CrosslyClient(token: token, options: CrosslyClientOptions(timeout: 15, maxRetries: 5))

for try await listing in crossly.paginate(
    { ListingsAPI.listListings(page: $0, limit: $1, completion: $2) },
    items: { $0.data }, pagination: { $0.pagination }) {
    print(listing.id)
}
```

## Vapor

Product `CrosslyVapor` (only an app that depends on it builds Vapor):

```swift
import CrosslyVapor

app.grouped(CrosslyWebhookMiddleware(secret: Environment.get("CROSSLY_WEBHOOK_SECRET")!))
    .post("webhooks", "crossly") { req async throws -> HTTPStatus in
        let event = try req.crosslyWebhookEvent()   // verified; raw JSON in req.crosslyWebhookBody
        req.logger.info("\(event["type"] ?? "")")
        return .noContent
    }
```

## CocoaPods

SwiftPM is the supported install. `seller/Crossly.podspec` and `buyer/CrosslyBuyer.podspec` are the generator's
and are not published to CocoaPods trunk.

## Where things are

| client | API classes | models | API reference pages |
|---|---|---|---|
| seller | `seller/Crossly/Classes/OpenAPIs/APIs/` | `seller/Crossly/Classes/OpenAPIs/Models/<Area>/` | `seller/docs/` |
| buyer | `buyer/CrosslyBuyer/Classes/OpenAPIs/APIs/` | `buyer/CrosslyBuyer/Classes/OpenAPIs/Models/<Area>/` | `buyer/docs/` |

One class per API group (`OrdersApi`, `ListingsApi`, …), one model per type, the
models grouped one folder per product area (`vault`, `world`, `order`, …). A type
several endpoints share is ONE model, named after where it first appears
(`GetOrderResponse`, `ListOrdersItem`) or, for small shared shapes such as `{ ok }`,
after its fields (`OkResponse`). Each client README lists every method.

## Versions and changelog

Semantic versioning. While the version is 0.x, a release that removes an operation or a model bumps the minor
version; anything else bumps the patch. Every [CHANGELOG](CHANGELOG.md) entry lists the operations and models
that were added, changed or removed in the specs it was generated from.

## Verifying a release

Every release artifact is built on GitHub-hosted runners by [release.yml](.github/workflows/release.yml) and
carries a signed SLSA provenance attestation:

```sh
gh attestation verify <downloaded-file> --repo crossly-dev/crossly-swift
```

## Contributing

`seller/`, `buyer/` and `webhooks/` are generated, so a pull request that edits them would be overwritten by the
next release. Open an issue instead: the fix goes into the API spec or the generator, and every language picks it
up. [CONTRIBUTING.md](CONTRIBUTING.md) explains how to regenerate locally.

## More

- API reference and guides: https://crossly.net/docs
- Other languages: https://github.com/crossly-dev
- TypeScript (Node and browsers): [`@crossly/sdk`](https://github.com/crossly-dev/crossly-sdk); command line: [`@crossly/cli`](https://github.com/crossly-dev/crossly-cli); AI agents: [`@crossly/mcp`](https://github.com/crossly-dev/crossly-mcp)

## License

[MIT](LICENSE)
