// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XYNotesEditor",
    platforms: [
        .iOS(.v13),  // 你可以指定支持的平台和版本
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "XYNotesEditor",
            targets: ["XYNotesEditor"]),
    ],
    dependencies: [.package(path: "../"),],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "XYNotesEditor",
            dependencies: []),
        .testTarget(
            name: "XYNotesEditorTests",
            dependencies: ["XYNotesEditor"]
        ),
    ]
)
