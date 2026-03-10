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
            checksum: "2d9b758a579d87196d460899d625c56f30017a158036a8c8c71520d12cb74a78"
        ),
        .binaryTarget(
            name: "LibverifyControls",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/LibverifyControls.zip",
            checksum: "7ff07483dce7d98c5d9c864dcba7832c2aa25b488d27d2ae94e3b5379e824a77"
        ),
        .binaryTarget(
            name: "LibverifyExt",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/LibverifyExt.zip",
            checksum: "780bf122462ef74eee84fbdac65687c57552e0541d8ea749be3cb3e5b0bbd36f"
        ),
        .binaryTarget(
            name: "LibverifyNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/Libverify-NoTracer.zip",
            checksum: "d08da63cf36048c455e038b6dc85a143ef708e6dd2a12e5581cfd4141254a1b2"
        ),
        .binaryTarget(
            name: "LibverifyControlsNoTracer",
            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.10/LibverifyControls-NoTracer.zip",
            checksum: "6fb28b3c8da80b12900fe35030720df9ad5952d34769f621cdf6c44bd9293d2b"
        )
    ]
)
