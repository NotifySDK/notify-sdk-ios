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
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.12/Libverify.zip",
            checksum: "238e39aec7e83351b43da5f34faf8f7462aaa8d6cbdd37260ef6e07968f60e10"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.12/LibverifyControls.zip",
            checksum: "4de9cf0e0ce15de20f90ff0015cfc399d053509befcfd47ba466b220dfff709b"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.12/LibverifyExt.zip",
            checksum: "2ecf5dd7c975f29ce30acc91c800a5e73ab52cc54433ba549eeac60dd6c4392b"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.12/Libverify-NoTracer.zip",
            checksum: "60bf081c0610c00b95c2a01b5e3929831b7bb826b0bb442c3d6b662ecbf29ce3"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.12/LibverifyControls-NoTracer.zip",
            checksum: "702bbe66b4eb64ba32dee2297fe4ccb9a4cc615572f843120fb1c74e86e7c5dd"
        )
    ]
)
