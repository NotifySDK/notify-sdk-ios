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
            checksum: "c899108ad981c3021bc3eff9cded8649e3549584928beccce59ee65ccf3abbd5"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/LibverifyControls.zip",
            checksum: "5eed2338ce0464fdc78fa84f1327599a09e1b884ae56b280dfb92f114e34d6f1"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/LibverifyExt.zip",
            checksum: "7217356a632bf66d6800117b78b6a79cb9ff3a0864234a27b7464aba36a04765"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/Libverify-NoTracer.zip",
            checksum: "2a69d08c16af0695bdf3bd28afe9af350bcf1bc2d510e9ca77a764b3e6db32f4"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/LibverifyControls-NoTracer.zip",
            checksum: "1240b029378bfdfd851355a41ea39a3c7e26b2071044ce3d297c4d1c4cc1a04b"
        )
    ]
)
