// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NotifySDK",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "Libverify", targets: ["Libverify"]),
        .library(name: "LibverifyControls", targets: ["LibverifyControls"]),
        .library(name: "LibverifyExt", targets: ["LibverifyExt"]),
    ],
    dependencies: [
        .package(url: "https://github.com/odnoklassniki/tracer-lite-ios.git", "1.1.0"..<"2.0.0"),
    ],
    targets: [
        Target.binaryTarget(name: "Libverify",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.6/Libverify.zip",
                            checksum: "cb3d89d5ad2d067f96e463364c53d91cc99d4b8b0db12ae66ca7fbcf4996a5b0"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.6/LibverifyControls.zip",
                            checksum: "f95e07ff5b4b9bfbeab53dc7f0f5e484e4785d630a44a694b4cd0b6b59cec8ce"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.6/LibverifyExt.zip",
                            checksum: "5b53f93f94df3756324f879e617b7449c82803eeb58f81ce43a3a4fe1d3a512b")
    ]
)
