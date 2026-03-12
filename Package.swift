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
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.11/Libverify.zip",
            checksum: "ed951c8ea2a63165b56b194d4785bcdda9c95f586747540dfc48a4601186d3d3"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.11/LibverifyControls.zip",
            checksum: "9abb88be1cdaf399fa282de6f16ac2949cd178e941f3b268eb254e36ea215e89"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.11/LibverifyExt.zip",
            checksum: "5024c1676c4e731ddf1f93fcb1274051da86f1c27f1449b41b007c4f8cd32f68"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.11/Libverify-NoTracer.zip",
            checksum: "fe8374093ee5af304c6830e3895c5451157e32274cc112567fe3464f33de794f"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.11/LibverifyControls-NoTracer.zip",
            checksum: "fc2ad682e721e802cf0b6216d317f0a732693c8dc0f7e44f1f268b96eea18639"
        )
    ]
)
