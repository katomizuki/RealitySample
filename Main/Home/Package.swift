// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Home",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "Home",
            targets: ["Home"]),
        .library(
            name: "Repositry",
            targets: ["Repositry"]),
        .library(
            name: "ViewComponents",
            targets: ["ViewComponents"]),
        .library(
            name: "DomainModule",
            targets: ["DomainModule"]),
        .library(
            name: "MultiPeerFeature",
            targets: ["MultiPeerFeature"]),
    ],
    dependencies: [
        .package(
            name: "Firebase",url: "https://github.com/firebase/firebase-ios-sdk.git",
                 .exactItem(.init("10.0.0")!)),
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture.git",
                 .exactItem(.init("0.40.0")!)),
        .package(url: "https://github.com/Quick/Nimble.git", .upToNextMajor(from: "11.2.0")),
        .package(url: "https://github.com/Quick/Quick.git", .upToNextMajor(from: "6.0.1"))
    ],
    targets: [
        .target(
            name: "Home",
            dependencies: [.product(name: "ComposableArchitecture",
                                    package: "swift-composable-architecture")]),
        .target(
            name: "Repositry",
            dependencies: [
                .product(name: "ComposableArchitecture",
                         package: "swift-composable-architecture"),
                .product(name: "FirebaseFirestore",
                         package: "Firebase")
            ]),
        .target(
            name: "ViewComponents",
            dependencies: []),
        .target(
            name: "DomainModule",
            dependencies: [.product(name: "ComposableArchitecture",
                                    package: "swift-composable-architecture")]),
        .target(
            name: "MultiPeerFeature",
            dependencies: []),
        .testTarget(
            name: "HomeTests",
            dependencies: ["Home",
                           .product(name: "Quick", package: "Quick"),
                           .product(name: "Nimble", package: "Nimble")]),
    ]
)
