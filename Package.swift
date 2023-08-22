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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.3.2/Libverify.zip",
                            checksum: "bb1469bcea6c5e284dbda4fcc292bdc800aedd126b6bd21792c4c0ad2f0f69c3"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.3.2/LibverifyControls.zip",
                            checksum: "7a34c95eed50a24a1a071c7d1978a5f69c19881ea0cf2ef047a9b4aff695c8b2"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.3.2/LibverifyExt.zip",
                            checksum: "5ffa1b993f1c1b49bc51229b1f2097818f4865b4ae75b540741281eb9402aab9")
    ]
)
