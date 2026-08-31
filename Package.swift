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
            checksum: "327b5a822f2f2b3f2679757eedf757ac689e80e6582135156bf2e5eda3572860"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.18/LibverifyControls.zip",
            checksum: "11309774773659444598a83962ba32dc5d9c29ae36728e55c58b2a036d31dcfa"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.18/LibverifyExt.zip",
            checksum: "5f27f47e70d1dcdc8c77128ecf9a8ebf655cf8459de7b38188468199db31814c"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.18/Libverify-NoTracer.zip",
            checksum: "8f3c7b1b4a4f515055d886d10666db5be8ac0f8418344558fd297d4d599f7bc6"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.18/LibverifyControls-NoTracer.zip",
            checksum: "b578355a1f682ad794b407e5e4f652ebb47e2d76dae213fc4bc1ca30a138b6ee"
        )
    ]
)
