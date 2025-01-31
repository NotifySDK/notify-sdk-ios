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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.6/Libverify.zip",
                            checksum: "3c4a855748806b253c6a1d080b0b8090d1725bbca1683d2cdda9fbeecee5d702"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.6/LibverifyControls.zip",
                            checksum: "9cb60cac4bce44516bf4dddaad9008e46aa56e636938caad1c5119b2b7ab6302"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.6/LibverifyExt.zip",
                            checksum: "b5ce3d7fd781d1679d3b6ad21cf395e97cca9a61ad51297ad7bc07f0c73c16c3")
    ]
)
