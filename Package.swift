// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "VaporExtensions",
    products: [
        .library(name: "VaporExtensions", targets: ["VaporExtensions"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor-community/async-extensions.git", .branch("beta")),
        .package(url: "https://github.com/vapor-community/engine-extensions.git", .branch("beta"))
    ],
    targets: [
        .target(name: "VaporExtensions", dependencies: ["AsyncExtensions", "EngineExtensions"]),
        .testTarget(name: "VaporExtensionsTests", dependencies: ["VaporExtensions"])
    ]
)
