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
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.15/Libverify.zip",
            checksum: "73a07bda0bc4d483308ffb5608e843d0478d5a5a50c2c5ae2deb680861d20cae"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.15/LibverifyControls.zip",
            checksum: "d73e975d4e35bf859921e88a46fec2bcb02f5cfb20ce89a1e1b36b9aba2f7396"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.15/LibverifyExt.zip",
            checksum: "acadcf031cb612a1eeec1b157cf80473a67ee4173c2d49a118d1a63adc152022"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.15/Libverify-NoTracer.zip",
            checksum: "b7d334a3eb16fb89de520b9448009db1cb825e4ad533a507dafd307425e25782"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.15/LibverifyControls-NoTracer.zip",
            checksum: "b20ddcd9981fe132bde858f411efad1e224f15a0ed73b2da3f44cca837021100"
        )
    ]
)
