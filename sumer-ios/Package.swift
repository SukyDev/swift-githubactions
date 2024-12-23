// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "sumer-ios",
    platforms: [
        .iOS(.v17),
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyFeature",
            targets: ["MyFeature"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-snapshot-testing.git",
            .exactItem("1.17.5")
        ),
        .package(
            url: "https://github.com/luismachado/xcore",
            .upToNextMajor(from: "1.0.1")
        )
    ],
    
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MyFeature",
            dependencies: [
//                .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
                .product(name: "Xcore", package: "xcore")  // Ensure this is needed
            ]
        ),
        .target(
            name: "MyTestSupport",
            dependencies: [
                .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
                .product(name: "Xcore", package: "xcore")
            ],
            path: "Tests/MyTestSupport"
        ),
        .testTarget(
            name: "MyFeatureTests",
            dependencies: [
                "MyFeature",
                "MyTestSupport",
                .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
                .product(name: "Xcore", package: "xcore")
            ]
        ),
    ]
)
