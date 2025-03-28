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
    ],
    targets: [
        Target.binaryTarget(name: "Libverify",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.5/Libverify.zip",
                            checksum: "a2616b39ae72588cac41089c0eb9fb0023c1c3ddafe08b7069f5f8f5b08261b4"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.5/LibverifyControls.zip",
                            checksum: "4a2d87d948ff1dce063fb624d337474320fab76859502c3e9d1dea4e4f093ed1"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.5/LibverifyExt.zip",
                            checksum: "c26cabe86a4dcaa1cf0639319d3b09fd0472689ccc6f97b5d2ec8a3b09e46c9e")
    ]
)
