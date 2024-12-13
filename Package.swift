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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.1/Libverify.zip",
                            checksum: "9d16ad5229c007c74885f62e5579663e7a9cf900fc5966198dfcdf6bf53128a6"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.1/LibverifyControls.zip",
                            checksum: "acac62051e0943670ba9015ede1a65bf2502a11a70f349a4dffb37c284a5a91a"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.1/LibverifyExt.zip",
                            checksum: "1a9902877a6347c3b2dc31f1ec87664a463c4365891d5ca796fff6781a75342f")
    ]
)
