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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.7.1-beta1/Libverify.zip",
                            checksum: "4eff4c2348813789e7091cacf2dbf4107eddbc0b0a9c89d30490744fc777d348"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.7.1-beta1/LibverifyControls.zip",
                            checksum: "0b02990288f3a94269b6e0e885e00896c4da1bdf301dca17747451bdac3a0999"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.7.1-beta1/LibverifyExt.zip",
                            checksum: "15be47044249b64e7b9bc4ca934e93cb6c46381d0720f60a9f41c9f38273d50c")
    ]
)
