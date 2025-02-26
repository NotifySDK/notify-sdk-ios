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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.3/Libverify.zip",
                            checksum: "281b15ffaebf0a25589c444f98fc4061428db58e9f174a874679d943331c24c0"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.3/LibverifyControls.zip",
                            checksum: "890ea4741312193293383e780af0e3ec92ac4eb4b06fb284b35346b6877746a0"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.3/LibverifyExt.zip",
                            checksum: "cea968e749157177a50b2bb2b18d7aee751a49e4df2bde8f56ef467f8513f910")
    ]
)
