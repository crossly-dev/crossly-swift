// Print every listing in your Crossly store, page by page.
//
// In an executable target that depends on .product(name: "Crossly", package: "crossly-swift"):
//   CROSSLY_TOKEN=crossly_pat_... swift run
import Crossly
import Foundation

@main
struct ListListings {
    static func main() async throws {
        let crossly = CrosslyClient(token: ProcessInfo.processInfo.environment["CROSSLY_TOKEN"]!)
        do {
            for try await item in crossly.paginate(
                { ListingsAPI.listListings(page: $0, limit: $1, completion: $2) },
                items: { $0.data }, pagination: { $0.pagination }) {
                print(item.id, item.status, item.title ?? "")
            }
        } catch let error as CrosslyError {
            // code and correlationId are what support needs.
            print("failed: \(error.status) \(error.code ?? "") \(error.correlationId ?? "")")
        }
    }
}
