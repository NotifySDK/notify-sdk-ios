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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.1.3/Libverify.zip",
                            checksum: "9a0bc834d8ae2e7f6ac63489885aff568f7e1b1c9cc86ce7529781b465d22939"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.1.3/LibverifyControls.zip",
                            checksum: "fd2a52b3f13efb57d63056e7710f2fe930d18784588e1a3522b5a88672c9cba1"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.1.3/LibverifyExt.zip",
                            checksum: "c1b2df2cd9546cd8c454a1a442b6fc3ead7e26a48b92294f53c1a9cfa203a818")
    ]
)
