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
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14-alpha1/Libverify.zip",
            checksum: "e6658db85d1b7095d27b410e1e5912e860a64df00a286c2c015a79f48ee3c716"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14-alpha1/LibverifyControls.zip",
            checksum: "6a43fd699083a373cc11a84a8a47078b0aeae9f895db37260aee4d543d9af28a"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14-alpha1/LibverifyExt.zip",
            checksum: "fd77d58bfbbae54d0aa9b8f60617e1ffe3106fd639d3e7416dac36dc8a2801f7"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14-alpha1/Libverify-NoTracer.zip",
            checksum: "4296322000d05bc26797c4d42cfc7de4c4d06f0274c3ef8706e2f39d02e2488a"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14-alpha1/LibverifyControls-NoTracer.zip",
            checksum: "55659bb782737cea013509522933fadd72f8695f528a2090b62f4d31eada0423"
        )
    ]
)
