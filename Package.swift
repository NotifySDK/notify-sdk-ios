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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.6.1/Libverify.zip",
                            checksum: "a191a590933db6d623c8bce5cb642a79457c406859589b8eeead07ef1f83885d"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.6.1/LibverifyControls.zip",
                            checksum: "9ca795056c6a55e274647d04644c8d779e85f1c45ac17249c4275653e6b0e4e6"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.6.1/LibverifyExt.zip",
                            checksum: "ebf1de0372500b21b09c2d766fe2e364bd70070f60518ff8a9e18429f78e7915")
    ]
)
