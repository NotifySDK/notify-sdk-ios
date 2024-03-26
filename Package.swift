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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.6.2-beta2/Libverify.zip",
                            checksum: "d9d29234b3934ef60f60bd13170507e03ffb173dbb5b2a542493a1ee1ca9b2ba"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.6.2-beta2/LibverifyControls.zip",
                            checksum: "a1d3e22036f02110230920685cfa356462e388a815af0a95bfd54cc2f97e11a7"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.6.2-beta2/LibverifyExt.zip",
                            checksum: "f5644b75e46736ceece6a695fac2609d64a73e27326bcf533191a3cb24ef2a8d")
    ]
)
