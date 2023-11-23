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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.5.0/Libverify.zip",
                            checksum: "523dbefc9b6a0e823fdad72f7d2edfe07e4b35cd30b64cc16d172cf5b23e61e5"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.5.0/LibverifyControls.zip",
                            checksum: "521824d3b739affe8ad8c1cdd79139372434e0a3d02c3427e143bf7d827f2c21"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.5.0/LibverifyExt.zip",
                            checksum: "3b94b179fccab24eddb9af54db1c03dfe78fa83dae9aaae1bcb0a4e3404dbd26")
    ]
)
