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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.0-alpha1/Libverify.zip",
                            checksum: "dd56e5ba5864f6c73aecedaf85db03faebc870e61788d533e725aea1625adaf7"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.0-alpha1/LibverifyControls.zip",
                            checksum: "45fd8c459d0dd1f08be9914ea21b6c74b4740d8074be686b6cfafc4753c925dd"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.0-alpha1/LibverifyExt.zip",
                            checksum: "3918b51b22dd9854b8f12486aacf66d4f9802ab5aef86a516ed7271c52af52d5")
    ]
)
