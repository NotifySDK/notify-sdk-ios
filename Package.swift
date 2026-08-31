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
            checksum: "3166d85675dd3bb26ec5320594ece49fe0643568f58c6e1af715a9bf86bdd69a"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.18/LibverifyControls.zip",
            checksum: "bb25a54c8767dfbd2567e81b9e1650cf7fbca964fd5a96ef2e1f7c1c1089f3ac"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.18/LibverifyExt.zip",
            checksum: "f07d0299b41722a08c70c163f189c9e31fc109050bb7fdaa31da59fa1306c925"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.18/Libverify-NoTracer.zip",
            checksum: "bcc4a828cd84bd4a8bea208cb530956f1554628f1b8de6c482310cc064b6a2fe"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.18/LibverifyControls-NoTracer.zip",
            checksum: "eb7706a8a130d8497ea0688bd4cf28d8d0b44c987ef36e5cd123792ae5ce3947"
        )
    ]
)
