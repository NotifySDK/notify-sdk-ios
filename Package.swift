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
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14/Libverify.zip",
            checksum: "fe462533ffba0ebdb6795b4c7941a154567b71490685d7010ed358b03ea5edc0"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14/LibverifyControls.zip",
            checksum: "0fcde26ff79e424704c8539b394bed8ae144446cdd4c20c2fdb16485acd05ec6"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14/LibverifyExt.zip",
            checksum: "08744f99bf1919ca9495b935dc8917561917cb49d0cd8cf4999141019439b2c6"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14/Libverify-NoTracer.zip",
            checksum: "e2298de074a4c05cdc74af5b5cbfba7cb5b356240178eb6857cae7d6998c5786"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14/LibverifyControls-NoTracer.zip",
            checksum: "8320cd6b1c5d973c02916e255dd6263ef91dd8ae08746254fdcb14d15d5034a9"
        )
    ]
)
