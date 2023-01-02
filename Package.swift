// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "openai",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .library(name: "OpenAI", targets: ["OpenAI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/dylanshine/openai-kit.git", from: "1.0.0"),
    ],
    targets: [
        .target(name: "OpenAI", dependencies: [
            .product(name: "OpenAIKit", package: "openai-kit"),
            .product(name: "Vapor", package: "vapor"),
        ])
    ]
)
