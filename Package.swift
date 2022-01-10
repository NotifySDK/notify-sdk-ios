// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NotifySDK",
    platforms: [.iOS(.v10)],
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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.0-beta3/Libverify.zip",
                            checksum: "98d536fc6b92bb064dd0d3e960766be9dd314eecf0a9143d1b1b60eae270424e"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.0-beta3/LibverifyControls.zip",
                            checksum: "95d8406c5e98292b39f9910a16c67cb4b2708e2cf34ead83ce249cd318632150"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.0-beta3/LibverifyExt.zip",
                            checksum: "e17960dc7d04fefe5dcf42b374cf9836c89e6eddc396e7ad39c555f655e6475d")
    ]
)
