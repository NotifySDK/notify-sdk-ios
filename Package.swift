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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.4.0/Libverify.zip",
                            checksum: "e07809b834748b9ee1d24834ca45eb8b5335dbff27150a7891c29ed3fd6d47ed"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.4.0/LibverifyControls.zip",
                            checksum: "179ab28265202c287fc2c320cedae944d987671abce8f91718ecf24a3e8fef74"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.4.0/LibverifyExt.zip",
                            checksum: "de6a30d23ab2a0cd5cdb4ee4ed3e040035f5ff9ebcc6e768ab76e62de729e26d")
    ]
)
