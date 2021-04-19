// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "List",
    products: [
        .library(name: "List", targets: ["List"]),
    ],
    targets: [
        .target(name: "List", dependencies: []),
        .testTarget(name: "ListTests", dependencies: ["List"])
    ]
)
