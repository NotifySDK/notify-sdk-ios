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
        .package(url: "https://github.com/odnoklassniki/tracer-lite-ios.git", "1.1.0"..<"2.0.0"),
    ],
    targets: [
        Target.binaryTarget(name: "Libverify",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v/Libverify.zip",
                            checksum: "28be37361e708c421cdb780d77116bfadba152aaacf995114717dd0a798d7ef8"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v/LibverifyControls.zip",
                            checksum: "22008cf6c60b6525df6be1e821c842f94bce6bd21f6092fe8e453452191b8d96"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v/LibverifyExt.zip",
                            checksum: "61f2ad7377ec5142be25a5bfa83cdfd58173ce1aba20006797b7f20d5c1b5472")
    ]
)
