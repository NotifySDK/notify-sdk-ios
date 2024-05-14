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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.7.0/Libverify.zip",
                            checksum: "f0457083f489668e27fda861f885bfb54c8b36027bec6fc5b80c7f57607c5bc7"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.7.0/LibverifyControls.zip",
                            checksum: "194c69cbe77c72145c7b5da94b5e5660301d93952d4034142b81b2d16e795933"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.7.0/LibverifyExt.zip",
                            checksum: "f79676f078447e717173d0cc349ace7998dc3a9ac8bca662236d79e662be81d3")
    ]
)
