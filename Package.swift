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
            checksum: "21b2dd2f4f47c3b115fe3bf6a1bcd84a728319d5c0bbfc692f58466814c89ee7"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14/LibverifyControls.zip",
            checksum: "8b8a939e45c6d91e36922dd0ddb775389d836fafa145cdcc7584b38215ebab9c"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14/LibverifyExt.zip",
            checksum: "7960d880514481b30a915fef5693aa67c7ca9c4d64077e3170905cc771c179bf"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14/Libverify-NoTracer.zip",
            checksum: "d2834dce33196aadf4f09ea68cd03df0cd5b979bc167875275fd24790cf4edc7"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14/LibverifyControls-NoTracer.zip",
            checksum: "df6e85781973c426fd67c56ce1fdaaf1354f55f94deb7efc82ac30650d7b8fa9"
        )
    ]
)
