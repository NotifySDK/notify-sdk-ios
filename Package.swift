// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NotifySDK",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "Libverify", targets: ["Libverify"]),
        .library(name: "LibverifyControls", targets: ["LibverifyControls"]),
        .library(name: "LibverifyExt", targets: ["LibverifyExt"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        Target.binaryTarget(name: "Libverify",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.4/Libverify.zip",
                            checksum: "b9a40209c89e65a5aa8e77a6df195116c0344aa182dc1ca577f8b7944f254668"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.4/LibverifyControls.zip",
                            checksum: "909724883281cd5e1a2a4944b3a6fb229670d4aca224dcc77cd63a01d2cad22a"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.4/LibverifyExt.zip",
                            checksum: "7465865a1a1e7737b711daf0d826a70b737b485d96dfc2de70dc904027c67720")
    ]
)
