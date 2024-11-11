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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.7.2-alpha1/Libverify.zip",
                            checksum: "ecee18e4845f13c9e1c445fe2fff9f1d66930c26c2c44c5531c1e5f06ccd2459"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.7.2-alpha1/LibverifyControls.zip",
                            checksum: "cf71671049697d460b3e66617cab7f177de6f7b14717aa2a6bf0dad82416f241"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.7.2-alpha1/LibverifyExt.zip",
                            checksum: "8915b24c596a3c1e5cfb4b17b2bd13ef3a5253f1cc08bf676a921962f1243660")
    ]
)
