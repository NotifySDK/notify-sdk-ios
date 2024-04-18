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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.6.2/Libverify.zip",
                            checksum: "d698b3c82a185bb1d68b39d8a320ade38acf9264b944588c4c415788e6a70dd5"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.6.2/LibverifyControls.zip",
                            checksum: "c373febf7c7ebc064dc62e6f0ccd3fc2fd680642480de3cabd4c15d5b21302ae"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.6.2/LibverifyExt.zip",
                            checksum: "3da551a408785fb094254c0fc2c1d36f564749f3a2513cac352119675086eb2d")
    ]
)
