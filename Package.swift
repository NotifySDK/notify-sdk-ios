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
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.9/Libverify.zip",
            checksum: "306bd46fec5bb437f5751b6de3d95eb8f3abffc52317c086f74aa2b8ce3b27a9"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.9/LibverifyControls.zip",
            checksum: "96b5730ba15eb0898cb7a4ea1cf9bdbce6d6a5a58cf24e6f4665b7d9145729fe"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.9/LibverifyExt.zip",
            checksum: "9ec59e43892b178eaefd103e730d27141bc040c1806b383070e30d7252730122"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.9/Libverify-NoTracer.zip",
            checksum: "1efb4e8cb9b69e5b6d9771689068c2d874ca93cb096d80ed51e82ac95e23c481"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.9/LibverifyControls-NoTracer.zip",
            checksum: "a71f3a531d4ed2fd19190f52392179799890ec8e2d36be417242f5a56c856d24"
        )
    ]
)
