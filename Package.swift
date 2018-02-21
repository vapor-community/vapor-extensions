// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VaporExtensions",
    products: [
        .library(name: "VaporExtensions", targets: ["VaporExtensions"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0-beta")
    ],
    targets: [
        .target(name: "VaporExtensions", dependencies: ["Vapor"]),
        .testTarget(name: "VaporExtensionsTests", dependencies: ["VaporExtensions"])
    ]
)
