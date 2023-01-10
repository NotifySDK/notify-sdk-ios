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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.1.1/Libverify.zip",
                            checksum: "8c6046ab6f438b96ed93ace2a090909d9bc89e2cd37ed1579b27b522f22e03a5"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.1.1/LibverifyControls.zip",
                            checksum: "0697ee5d2873ca37c180bcb37dc0681180ff67f2e66f4a7497ce6a040375d3e6"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.1.1/LibverifyExt.zip",
                            checksum: "71b2749d37317b576d3ba9d5727d43fce24824dc17676bf396d30ecba03bca14")
    ]
)
