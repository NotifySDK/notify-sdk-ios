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
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/Libverify.zip",
            checksum: "32de22449354b74a3b3c1f4de4344046ee2bc2457bb2b112576c57e13e788794"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/LibverifyControls.zip",
            checksum: "176898dfc9d8dad3522d23223cb2221db1e65da5509f93a6790d4e33b383ed1c"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/LibverifyExt.zip",
            checksum: "666d86cee8b3b2911510413bd86cbeb67866e050adb640650ba5e55196b6515c"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/Libverify-NoTracer.zip",
            checksum: "9bc0a3391bb9da747ecbb7abf789d86f1a7b887c24ef19225b0c0cbced346e2b"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/LibverifyControls-NoTracer.zip",
            checksum: "2b432226156a4151514874abf595c4713752933fcb7ff065b790a43f0c61fb1e"
        )
    ]
)
