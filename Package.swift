// swift-tools-version:5.9
// Managed by tools/sdk-repo/seed.mjs in the Crossly monorepo: edits here are overwritten on the next seed.
import PackageDescription

let package = Package(
    name: "Crossly",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)],
    products: [
        // The seller API (Personal Access Token / seller OAuth).
        .library(name: "Crossly", targets: ["Crossly"]),
        // The buyer API (buyer OAuth, buyer:* scopes).
        .library(name: "CrosslyBuyer", targets: ["CrosslyBuyer"]),
        // The webhook verifier alone.
        .library(name: "CrosslyWebhooks", targets: ["CrosslyWebhooks"]),
        // Vapor middleware around the verifier. Only an app that depends on this product builds Vapor.
        .library(name: "CrosslyVapor", targets: ["CrosslyVapor"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Flight-School/AnyCodable", from: "0.6.1"),
        .package(url: "https://github.com/apple/swift-crypto.git", "2.0.0" ..< "4.0.0"),
        .package(url: "https://github.com/vapor/vapor.git", from: "4.89.0"),
    ],
    targets: [
        .target(name: "Crossly", dependencies: ["AnyCodable"], path: "seller/Crossly/Classes"),
        .target(name: "CrosslyBuyer", dependencies: ["AnyCodable"], path: "buyer/CrosslyBuyer/Classes"),
        // CryptoKit on Apple platforms, swift-crypto (same API) on Linux.
        .target(
            name: "CrosslyWebhooks",
            dependencies: [.product(name: "Crypto", package: "swift-crypto")],
            path: "webhooks",
            exclude: ["test-vectors.tsv"],
            sources: ["CrosslyWebhooks.swift"]
        ),
        .target(
            name: "CrosslyVapor",
            dependencies: ["CrosslyWebhooks", .product(name: "Vapor", package: "vapor")],
            path: "Sources/CrosslyVapor"
        ),
    ]
)
