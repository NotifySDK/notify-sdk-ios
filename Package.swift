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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.8/Libverify.zip",
                            checksum: "23794159632c4f595de80bc9e4afe4fae64ad17ad32cfc95a65eb5f0f1e351ea"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.8/LibverifyControls.zip",
                            checksum: "c77443d4026468e912eb0869067ec4bf8cccd2a379f8ceb3b74a5a026ab2a0a1"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.8/LibverifyExt.zip",
                            checksum: "084cb397c8952aa36777d3887ad537e3899bd8e39fd6c0eff9df76d43a0f5f20")
    ]
)
