// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NotifySDK",
    platforms: [.iOS(.v10)],
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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.0-beta2/Libverify.zip",
                            checksum: "a336eaa1827068697963427c90e6c9a8c6626be8d48678b2e35ea792bd044ea7"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.0-beta2/LibverifyControls.zip",
                            checksum: "05cf2ab5d57bc1c3ce84afc92111563684687c43c273d4bd37f04ede3a54db02"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.0-beta2/LibverifyExt.zip",
                            checksum: "d2df0688f4f69c2174d4c3ccf582d9213a2b0e3d382afc5e138ff49e789915f6")
    ]
)
