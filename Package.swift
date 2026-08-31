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
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.18/Libverify.zip",
            checksum: "2fc15f7fc9ce166ed51978fbf12c891d42993adb4f8d0b2dc567e6e828fe7994"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.18/LibverifyControls.zip",
            checksum: "9e2f3e1df1f70e33320cb9c1cb89748cbea9b06187a06d91b6f9986e71f01f74"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.18/LibverifyExt.zip",
            checksum: "dafb56664ef364b70b90a6cb168c73caf5f9071581db2c5eca81151c88c16114"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.18/Libverify-NoTracer.zip",
            checksum: "b914f19a92c0a0473e54ba84d17dcc33ef03f686edcacf8b81f7c1580c8085fa"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.18/LibverifyControls-NoTracer.zip",
            checksum: "c3f2df3c874a8e8d4df7d1e906f47fb6a02640df258abd82b25fb6e12b20403a"
        )
    ]
)
