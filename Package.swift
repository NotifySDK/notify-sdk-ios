// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NotifySDK",
    platforms: [.iOS(.v10)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "Libverify", targets: ["Libverify"]),
        .library(name: "LibverifyControls", targets: ["LibverifyControls"]),
        .library(name: "LibverifyExt", targets: ["LibverifyExt"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        Target.binaryTarget(name: "Libverify",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.0-beta6/Libverify.zip",
                            checksum: "92d97ee116b4a8d3c583c86dac06dfd5924391d32c91b21fea1e1a48d7ee1ce3"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.0-beta6/LibverifyControls.zip",
                            checksum: "e6bf8c74a7b7d57582dac9e703d4f245010aa285d7373e3930ee55c4da35a3aa"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.0-beta6/LibverifyExt.zip",
                            checksum: "25ebac40f81af6a3e49988624e4dddd46154d6bf8ccc384373e49f6e544eb62a")
    ]
)
