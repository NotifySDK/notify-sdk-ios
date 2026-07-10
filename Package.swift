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
            checksum: "dddf553a436cacc3a00fcc9814e146701ef4528c197bca1f8e11251906033504"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14/LibverifyControls.zip",
            checksum: "a3560717154836af53d3199ef8e7d3dde739fe11de9d63cc196ad207f661ac23"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14/LibverifyExt.zip",
            checksum: "dd698070f798b2fa3c772af8a46d58665a777e40400a145d02f57de621cdac7f"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14/Libverify-NoTracer.zip",
            checksum: "ea9d339eaf77a6e3caf73a255a268693a79b38e13c94d1c515acbe3ce18d1d0a"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.14/LibverifyControls-NoTracer.zip",
            checksum: "da7efc16978f5a0a8ff53fae731363206ad02d6d739195fdd8165588ae55641f"
        )
    ]
)
