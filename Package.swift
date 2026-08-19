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
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.17/Libverify.zip",
            checksum: "2a92c7c420b96b73f07ee9b91cb913aa81e4abe9b79c5ceb6d5e7e57cc024524"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.17/LibverifyControls.zip",
            checksum: "3d42e27ad1099f0029b983d260e80a6aff024efea80fe3fa7cea361fc45b3f40"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.17/LibverifyExt.zip",
            checksum: "b49e8bc169f7aa596b3ec543e9d75e378db74806680a020768d6135adc95f122"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.17/Libverify-NoTracer.zip",
            checksum: "fbe1575350eaae4a6fb6c0b995f306e816131f53f92faae4f636e70411d066b3"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.17/LibverifyControls-NoTracer.zip",
            checksum: "1d05186f336eed734cb0baa9a1394fc808f4d084eedf38d494b23d1ea807e247"
        )
    ]
)
