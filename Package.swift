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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.4/Libverify.zip",
                            checksum: "ecfc4f32582a82cb45152d4deb52e27190cc4d5ebba514b2b586edb0207b1b1c"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.4/LibverifyControls.zip",
                            checksum: "3130e7dbc6b287eb1777ddff7414cced2ed6fc0e21d4514ff98b18fcd7af635d"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.4/LibverifyExt.zip",
                            checksum: "3c219860402cdcbad2fa6ef4261315e4006b192e0fd05528f3c74cc05f0de153")
    ]
)
