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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.3.5/Libverify.zip",
                            checksum: "a9bf91ae703730a3efd63fc24e149412ba08b687ac2073b974e3d28111d50278"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.3.5/LibverifyControls.zip",
                            checksum: "8716eecd622d6154b535c21f1b08b53851b2d3e31351be586978175b7b2b3424"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.3.5/LibverifyExt.zip",
                            checksum: "7e9381d7e5548b7211bcfbdbb69554e84e9a5c2c98947bd521e4b81e6a806044")
    ]
)
