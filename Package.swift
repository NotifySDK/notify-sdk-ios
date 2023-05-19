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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.1.4/Libverify.zip",
                            checksum: "52af2c627b84f56cd359c0440cb8533cba17aeddf22ba1dcec13776a814ff1cf"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.1.4/LibverifyControls.zip",
                            checksum: "bb50c9c16d4a8a1c8fbf2923be74f0c37945a6550a1a7f7ab6cac13692bd5e5c"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.1.4/LibverifyExt.zip",
                            checksum: "49ec710bd948e53c42eb9c196056632d73a6880fc7fe915c43626e3d86ee308e")
    ]
)
