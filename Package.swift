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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.4/Libverify.zip",
                            checksum: "8e07a83e6967e769c6034038aac412d3e81284e6aeea52c73e0e2cf4e24b2627"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.4/LibverifyControls.zip",
                            checksum: "9650eb5187906e00a3086866a044eb2e234dee306fd5f3f6f653acffc27de8f2"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.4/LibverifyExt.zip",
                            checksum: "211e7c7e7f0b3b0ede5413ea72bbd297e98d408f23599a5bc4326e97342b05be")
    ]
)
