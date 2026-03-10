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
            checksum: "ad8d3b8969a2e2bbb8ed20ecb283091c4e6868b3e3af2467d17cd6d3f14705b1"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/LibverifyControls.zip",
            checksum: "9289819ac0691d0a529ae5016f3b042500ecc1740069c7f2dde37494d7668959"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/LibverifyExt.zip",
            checksum: "40ad141491c254369658b141fdd8d69829304ee94106f31f4549541425dba409"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/Libverify-NoTracer.zip",
            checksum: "19a64db15ebc58e167dbb4eca19fefde0aa62deb22b3722cd66dd7d2ea00f436"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/LibverifyControls-NoTracer.zip",
            checksum: "ba07a3358b52e28046f3c3d7d605d6ff8a9816e9ba4be9066cc7f5b2c32176ba"
        )
    ]
)
