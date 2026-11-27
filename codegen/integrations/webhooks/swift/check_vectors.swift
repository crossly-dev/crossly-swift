// Run the shared vectors against the Swift port.
//
//   swiftc -parse-as-library CrosslyWebhooks.swift check_vectors.swift -o check-vectors && ./check-vectors
//
// Built with plain swiftc (CryptoKit on macOS), so the runner needs no package resolution. Exit 1 on any mismatch.
import Foundation

private struct Vector: Decodable {
    let name: String
    let body: String
    let header: String
    let secret: String
    let now: Int
    let expect: String
}

private struct VectorFile: Decodable {
    let toleranceSeconds: Int
    let vectors: [Vector]
}

@main
struct CheckVectors {
    static func main() throws {
        let here = URL(fileURLWithPath: #filePath).deletingLastPathComponent()
        let path = CommandLine.arguments.count > 1
            ? URL(fileURLWithPath: CommandLine.arguments[1])
            : here.deletingLastPathComponent().appendingPathComponent("test-vectors.json")
        let file = try JSONDecoder().decode(VectorFile.self, from: Data(contentsOf: path))

        var ok = 0
        var bad = 0
        for v in file.vectors {
            let got: String
            do {
                _ = try CrosslyWebhooks.verify(
                    rawBody: Data(v.body.utf8),
                    signatureHeader: v.header,
                    secret: v.secret,
                    toleranceSeconds: file.toleranceSeconds,
                    now: v.now)
                got = "ok"
            } catch let e as CrosslyWebhooks.VerificationError {
                got = e.reason
            } catch {
                got = "threw:\(type(of: error))"
            }
            if got == v.expect {
                ok += 1
            } else {
                bad += 1
                print("  MISMATCH \(v.name): expected \(v.expect), got \(got)")
            }
        }
        let mustFail = file.vectors.filter { $0.expect != "ok" }.count
        print("  swift: \(ok)/\(file.vectors.count) vectors agree (\(mustFail) must fail)")
        exit(bad == 0 ? 0 : 1)
    }
}
