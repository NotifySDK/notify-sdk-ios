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
            checksum: "088995f2315f1a5ba1a2366de792321a1af673b83cc46fb874eb48e4b33102ed"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/LibverifyControls.zip",
            checksum: "4f514cbf45680f054e43a3baa57237561499d93cfa9e9e9c7cc66c8286a24ec4"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/LibverifyExt.zip",
            checksum: "c7cfe9aa9e8dd1e500f0012f22f04bc09bc046d24cc21f129d89340b4a758aa5"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/Libverify-NoTracer.zip",
            checksum: "b12c4d0df32902511968f23e5d270f2bae650ff1a4d302a4d8c2dbd741270048"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/LibverifyControls-NoTracer.zip",
            checksum: "06ae568d9772475d2d1ee4a51b14fe76005830fa8c9aefa2310d2268deb3b6dd"
        )
    ]
)
