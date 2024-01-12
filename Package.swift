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
                            checksum: "cd12218311c5205ec366eca6a75efb5238e2526979f3687c7b3062dfd6787c46"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.6.0/LibverifyControls.zip",
                            checksum: "03bd3486d6fc33e4bdb88c5504cf221640e4112c2aa8965b9cfb87019b8c8ae0"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.6.0/LibverifyExt.zip",
                            checksum: "777eee9f98e3a94506f3268f402dc0f40fa7a1adaeced15f6544e2a79a5ecea0")
    ]
)
