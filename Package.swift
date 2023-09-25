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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.3.4/Libverify.zip",
                            checksum: "a0444f2b1e3e61977152359b62baa78c1920a1936386768d9dbda61ed7c0d26c"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.3.4/LibverifyControls.zip",
                            checksum: "47fdcaa1f303b7f850c4ab6fac3d2b313fa47375277bde761a9e968cd3baa995"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.3.4/LibverifyExt.zip",
                            checksum: "6d692bc060a5f13eb8d744ef0bfb1f31748b13ad360ee6cb50cb4de8e7d8736b")
    ]
)
