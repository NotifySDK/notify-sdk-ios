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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.3.3/Libverify.zip",
                            checksum: "c602d2658b8c22bb6377f9fd80639f67dbf79b43b53edb424f2d445f74a8b14a"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.3.3/LibverifyControls.zip",
                            checksum: "a3edcdebbedc18867c0008ed7dbeb75b9ef46c829f60ada16c570ffd9482388a"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.3.3/LibverifyExt.zip",
                            checksum: "7236a253f419d9636ff1d2a02338e9ae107306cd76c7e9c7b539575bbaaa1305")
    ]
)
