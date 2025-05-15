// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Demohelper",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "Demohelper",
            targets: ["DemoHelperPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "DemoHelperPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/DemoHelperPlugin"),
        .testTarget(
            name: "DemoHelperPluginTests",
            dependencies: ["DemoHelperPlugin"],
            path: "ios/Tests/DemoHelperPluginTests")
    ]
)