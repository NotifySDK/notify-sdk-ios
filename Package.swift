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
                            checksum: "60978d12b60fa243b5c19e3d78ec7063ba658c7ebcd0935b32bda3864a5548da"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v/LibverifyControls.zip",
                            checksum: "a4a7a2a188d6237510a5534ae003e2c07388bdeb8b297156cf3a47dab4cd5487"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v/LibverifyExt.zip",
                            checksum: "7fd81b78c0eb77ba84985cfa214849562a1e0ab6d78e5d1c5aea347a265ae241")
    ]
)
