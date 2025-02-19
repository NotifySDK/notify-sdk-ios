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
    ],
    targets: [
        Target.binaryTarget(name: "Libverify",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.2/Libverify.zip",
                            checksum: "aee3645d9baabcbd66e3b191b476d7f243f174b04bdd78084ff44a20b6f3294d"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.2/LibverifyControls.zip",
                            checksum: "2835d23ddca6d88efdef89e5da8469802bf9d41dffb08f9db358c4f2e90a14a8"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.2/LibverifyExt.zip",
                            checksum: "0a7674dd153dacf22c73b8626e3a359fa3d6652d96d94712dc204cd08ce62515")
    ]
)
