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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.6.0/Libverify.zip",
                            checksum: "cbc39b8a313730af57e132f8ca2f5d2c33dccf861ebb4351ceaf4b6966d463b6"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.6.0/LibverifyControls.zip",
                            checksum: "ce915f476804d58a48fd1626be6337273a039be292316385f919adc8e1395802"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.6.0/LibverifyExt.zip",
                            checksum: "83aaa220314f91291c814a8e7d7f64a975751b44d03903349d6c2b1a6e2c84e6")
    ]
)
