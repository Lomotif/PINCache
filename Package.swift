// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "PINCache",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v8),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "PINCache",
            targets: ["PINCache"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Lomotif/PINOperation.git", .upToNextMajor(from: "1.1.3"))
    ],
    targets: [
        .target(
            name: "PINCache",
            dependencies: ["PINOperation"],
            path: "Source"
        )
    ]
)
