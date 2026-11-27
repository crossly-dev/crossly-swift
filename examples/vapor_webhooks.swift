// A Crossly webhook receiver on Vapor.
//
// In an executable target that depends on .product(name: "CrosslyVapor", package: "crossly-swift") and Vapor:
//   CROSSLY_WEBHOOK_SECRET=... swift run
// then point a webhook endpoint (Settings → Webhooks) at http://<host>:8080/webhooks/crossly
import CrosslyVapor
import Vapor

@main
struct WebhookServer {
    static func main() async throws {
        let app = try await Application.make(.detect())
        app.grouped(CrosslyWebhookMiddleware(secret: Environment.get("CROSSLY_WEBHOOK_SECRET")!))
            .post("webhooks", "crossly") { req async throws -> HTTPStatus in
                // Verified over the exact bytes received before this handler runs.
                let event = try req.crosslyWebhookEvent()
                req.logger.info("\(event["type"] ?? ""): \(event["id"] ?? "")")
                // Answer fast; do slow work after replying, or Crossly retries the delivery.
                return .noContent
            }
        try await app.execute()
        try await app.asyncShutdown()
    }
}
