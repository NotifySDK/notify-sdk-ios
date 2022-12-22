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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.1.0/Libverify.zip",
                            checksum: "3a45ab2e45658ed1c727ca59e72928926ffa73d13adc270b7cbe3834c8db61b2"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.1.0/LibverifyControls.zip",
                            checksum: "9380d967338371b26f2017e9dc18e6475a3f1bdb100bac29b448b8d297e70887"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.1.0/LibverifyExt.zip",
                            checksum: "1b819383a985f9341074e5e5085fb7cd66b37175ff51e261b6c801408e61b61e")
    ]
)
