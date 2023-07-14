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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.2.1/Libverify.zip",
                            checksum: "25dddbfe654d34bab20201adc7d625dbf39e291cfbe1260c10a628d80c4e7bd4"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.2.1/LibverifyControls.zip",
                            checksum: "0f322f93881b01835ab927b159d90775ae56fa9b7518073a5479bb633d668432"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.2.1/LibverifyExt.zip",
                            checksum: "491721934cda2adabe2c120fdb30ffdcf738d687adbc4c8fdb9d1d3d8d5677c2")
    ]
)
