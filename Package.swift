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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.7.1/Libverify.zip",
                            checksum: "19efa7d75f05ccf063d9e826a80d3be9776d85e4d8978dab35dd9182f4bcfd3b"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.7.1/LibverifyControls.zip",
                            checksum: "71fe6bc2552e02538d160d28cc849759921204db37cf01340cc45b87fd482e21"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.7.1/LibverifyExt.zip",
                            checksum: "917151a3881a66379a7622f2c6d9c17210ff9b7eedb7860d43dba49f29efa423")
    ]
)
