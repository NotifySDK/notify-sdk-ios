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
        .package(url: "https://github.com/odnoklassniki/tracer-lite-ios.git", "0.0.3"..<"1.0.0"),
    ],
    targets: [
        Target.binaryTarget(name: "Libverify",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.0/Libverify.zip",
                            checksum: "0b84335a02648e0ef9f9c50b59dad4460a67b41a74405c704c16943657989a31"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.0/LibverifyControls.zip",
                            checksum: "728102f6a2d58522ad9681051d2512cb2f227df0ada8e301097b1a52c78f50b9"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.0/LibverifyExt.zip",
                            checksum: "87d565cd8b8b162f22c38923441ed41c65ff6c196f87e1fb4be86425c0521914")
    ]
)
