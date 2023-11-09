// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExamplePackage",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CommonUI",
            targets: ["CommonUI"]),
        .library(
            name: "ExamplePackage",
            targets: ["ExamplePackage"]),
        .library(
            name: "Features",
            targets: ["Features"]),
        .library(
            name: "Helpers",
            targets: ["Helpers"]),
        .library(
            name: "Networking",
            targets: ["Networking"]),
        .library(
            name: "Theme",
            targets: ["Theme"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ExamplePackage"),
        .target(
            name: "Helpers"),
        .target(
            name: "Theme"),
        .target(
            name: "Networking",
            dependencies: ["Helpers"]),
        .target(
            name: "CommonUI",
            dependencies: ["Helpers", "Theme"], resources: [.process("Cells/Resources")]),
        .target(
            name: "Features",
        dependencies: ["CommonUI", "Helpers", "Theme"]),
        .testTarget(
            name: "ExamplePackageTests",
            dependencies: ["ExamplePackage"]),
    ]
)
