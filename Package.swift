// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NotifySDK",
    platforms: [.iOS(.v11)],
    products: [
        .library(name: "NotifySDK", targets: ["Libverify", "LibverifyControls"]),
        .library(name: "NotifySDK-NoTracer", targets: ["LibverifyNoTracer", "LibverifyControlsNoTracer"]),
        .library(name: "LibverifyExt", targets: ["LibverifyExt"]),
    ],
    targets: [
        .binaryTarget(
            name: "Libverify",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.15/Libverify.zip",
            checksum: "5ee4823ae61d45502eb3288d01d7a262c0342549928b9411f893f891b8877f38"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.15/LibverifyControls.zip",
            checksum: "aeb153ac0e5a5ead34e8f83ecc916d8037d62f7e0ec7834c70b94af4826aad07"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.15/LibverifyExt.zip",
            checksum: "cb0df8fe4f1f17588c5419061841ae08c49a86e467603b7d491fdd3531e3f965"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.15/Libverify-NoTracer.zip",
            checksum: "644c83a37e6b2a055d603175c613c66a01c6f2404b63a255ea784810f564207b"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.15/LibverifyControls-NoTracer.zip",
            checksum: "47032fc531497fea2d98bae704c93c60755b8fe4aca062e18f3994515b2501a0"
        )
    ]
)
