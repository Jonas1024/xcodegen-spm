// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "MyLibraryWrapper",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "MyLibrary1",
            type: .dynamic,
            targets: ["MyLibrary1"]),
        .library(
            name: "MyLibrary2",
            type: .dynamic,
            targets: ["MyLibrary2"]),
    ],
    dependencies: [
        // 这里添加任何依赖库
    ],
    targets: [
        .target(
            name: "MyLibrary1",
            dependencies: [],
            path: "Sources",
            sources: ["MyLibrary1"]),
        .target(
            name: "MyLibrary2",
            dependencies: [],
            path: "Sources",
            sources: ["MyLibrary2"]),
    ]
)
