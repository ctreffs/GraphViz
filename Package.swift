// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GraphViz",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "GraphViz",
            targets: ["Core", "DOT", "Output"]),
        .library(
            name: "GraphVizBuilder",
            targets: ["GraphVizBuilder"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Core",
            dependencies: []),
        .target(
            name: "DOT",
            dependencies: ["Core"]),
        .target(
            name: "Output",
            dependencies: ["Core", "DOT"]),
        .target(
            name: "GraphVizBuilder",
            dependencies: ["Core"]),
        .testTarget(
            name: "CoreTests",
            dependencies: ["Core", "DOT"]),
        .testTarget(
            name: "OutputTests",
            dependencies: ["Core", "DOT", "Output"]),
        .testTarget(
            name: "GraphVizBuilderTests",
            dependencies: ["Core", "DOT", "GraphVizBuilder"]),
    ]
)
