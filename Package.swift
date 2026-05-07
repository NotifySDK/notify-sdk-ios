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
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.13/Libverify.zip",
            checksum: "383572291cc57d74d5d65b6ca26b2c843a17586105ced9b9e6f60e8bed7011f1"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.13/LibverifyControls.zip",
            checksum: "39b0e655afabe54b22ad7a2b545f3936db4aebc620f9829f9595357e0522367f"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.13/LibverifyExt.zip",
            checksum: "e3313c8447162ee79cd95f0d15205aead68f3552a965522e0cabb16141cad994"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.13/Libverify-NoTracer.zip",
            checksum: "5cbe5777e11e93f39a50beed706d6372081cd495aaa48dfeb031cf7aaeb81f76"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.13/LibverifyControls-NoTracer.zip",
            checksum: "688be7f2f723cac785d0d4013839206409430a8b83b6b902091ebf13a75159b0"
        )
    ]
)
