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
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.16/Libverify.zip",
            checksum: "1409430df1f325eebd3fd72ffcf3ca286295468dac533e3ca38f7fbda370febd"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.16/LibverifyControls.zip",
            checksum: "e0cbb0ce28d843da793ed9a309ff440edf33364ed853edc1446494349dc13c46"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.16/LibverifyExt.zip",
            checksum: "b0b30c7db31de9ab526743e0563e369770ccf3554a6bd19b51073a90d9b3d512"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.16/Libverify-NoTracer.zip",
            checksum: "9b83a33e5f85589ab6322bb7f7faa718ab7a01e8ea318b6bf2b36c1f1fe9280a"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.16/LibverifyControls-NoTracer.zip",
            checksum: "c4147fd633ba3c0c617c953de329dfa0cb2fd245664a093461a2f23d8184c221"
        )
    ]
)
