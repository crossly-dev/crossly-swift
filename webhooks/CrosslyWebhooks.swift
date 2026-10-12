import Foundation
import Crypto  // swift-crypto; on Apple platforms `import CryptoKit` works unchanged

/// Verify a Crossly webhook.
///
/// ```
/// Crossly-Signature: t=<unix seconds>,v1=<hex HMAC-SHA256>
/// ```
///
/// signed over `"\(t).\(rawBody)"` with the endpoint's signing secret.
///
/// Three ways to get this wrong, all silent:
///
/// 1. Verifying a re-serialised body. `JSONSerialization` round trips reorder
///    keys and reformat numbers, so genuine payloads fail and the usual fix is
///    to stop verifying. In Vapor use `request.body.data`.
/// 2. Comparing with `==`. String equality returns early on the first differing
///    byte. The comparison here accumulates over the whole input.
/// 3. Ignoring the timestamp. Without it a captured request replays forever.
///    The timestamp is INSIDE the signed message, so it cannot be edited.
public enum CrosslyWebhooks {

    public static let defaultToleranceSeconds: Int = 300

    /// Why a webhook did not verify.
    ///
    /// `reason` is stable across every language port, so one alerting rule can
    /// tell a forged request from a clock problem.
    public struct VerificationError: Error, CustomStringConvertible {
        /// malformed_header | bad_signature | timestamp_out_of_tolerance | missing_secret
        public let reason: String
        public let message: String
        public var description: String { message }
    }

    /// Verify a webhook and return the raw body.
    ///
    /// Throws rather than returning a `Bool` so a caller who forgets to check a
    /// return value cannot silently accept forged events — and `try` makes the
    /// check visible at the call site.
    ///
    /// - Parameters:
    ///   - rawBody: The EXACT bytes received.
    ///   - signatureHeader: The `Crossly-Signature` header, verbatim.
    ///   - secret: The endpoint's signing secret.
    ///   - now: Override the clock, for tests.
    public static func verify(
        rawBody: Data,
        signatureHeader: String?,
        secret: String,
        toleranceSeconds: Int = defaultToleranceSeconds,
        now: Int? = nil
    ) throws -> String {

        guard !secret.isEmpty else {
            throw VerificationError(
                reason: "missing_secret",
                message: "A webhook signing secret is required.")
        }
        guard let header = signatureHeader, !header.isEmpty else {
            throw VerificationError(
                reason: "malformed_header",
                message: "No Crossly-Signature header on the request.")
        }

        var timestamp: Int?
        var provided: String?

        // Field-wise rather than one regex, so a future v2= alongside v1= does
        // not break existing verifiers — the entire reason the scheme carries a
        // version.
        for part in header.split(separator: ",", omittingEmptySubsequences: false) {
            guard let eq = part.firstIndex(of: "=") else { continue }
            let key = part[part.startIndex..<eq].trimmingCharacters(in: .whitespaces)
            let value = part[part.index(after: eq)...].trimmingCharacters(in: .whitespaces)

            if key == "t" {
                guard let parsed = Int(value) else {
                    throw VerificationError(
                        reason: "malformed_header",
                        message: "Crossly-Signature carries a non-numeric timestamp.")
                }
                timestamp = parsed
            } else if key == "v1" {
                provided = value
            }
        }

        guard let t = timestamp, let signature = provided, !signature.isEmpty else {
            throw VerificationError(
                reason: "malformed_header",
                message: #"Could not parse Crossly-Signature: expected "t=<unix>,v1=<hex>", got ""#
                    + String(header.prefix(60)) + #""."#)
        }

        guard let body = String(data: rawBody, encoding: .utf8) else {
            throw VerificationError(
                reason: "bad_signature", message: "Body is not valid UTF-8.")
        }

        let key = SymmetricKey(data: Data(secret.utf8))
        let mac = HMAC<SHA256>.authenticationCode(
            for: Data("\(t).\(body)".utf8), using: key)
        let expected = mac.map { String(format: "%02x", $0) }.joined()

        guard constantTimeEquals(expected, signature) else {
            throw VerificationError(
                reason: "bad_signature",
                message: "Signature did not match. If genuine payloads are failing, you are "
                    + "almost certainly verifying a re-serialised body — pass the bytes you "
                    + "read off the wire.")
        }

        // Freshness AFTER the signature, so an attacker learns nothing about
        // timestamps without already holding a valid signature.
        let current = now ?? Int(Date().timeIntervalSince1970)
        let drift = abs(current - t)
        guard drift <= toleranceSeconds else {
            throw VerificationError(
                reason: "timestamp_out_of_tolerance",
                message: "Timestamp is \(drift)s away from now (tolerance \(toleranceSeconds)s). "
                    + "This is a replay guard — if it fires on live traffic, check your server clock.")
        }

        return body
    }

    /// Constant-time compare over the whole input.
    ///
    /// Unequal lengths still walk the longer input rather than returning early,
    /// because an early return on length is a habit worth not having even where
    /// the length is not itself a secret.
    private static func constantTimeEquals(_ a: String, _ b: String) -> Bool {
        let lhs = Array(a.utf8)
        let rhs = Array(b.utf8)
        var diff = UInt8(truncatingIfNeeded: lhs.count ^ rhs.count)
        for i in 0..<max(lhs.count, rhs.count) {
            let x = i < lhs.count ? lhs[i] : 0
            let y = i < rhs.count ? rhs[i] : 0
            diff |= x ^ y
        }
        return diff == 0
    }
}
