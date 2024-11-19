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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.7.2/Libverify.zip",
                            checksum: "36a4a66b6870776fd396876a19b8566768840cd724127d337b24f1b5fc3a7f50"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.7.2/LibverifyControls.zip",
                            checksum: "e61b1cce5bce64a933332611da94aae1d646604160eb103c0d588c884b70c4a7"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.7.2/LibverifyExt.zip",
                            checksum: "cca2324e13d2e252750cba1a1922d4e79002dbb3be7f6b6321b1491eb0849c83")
    ]
)
