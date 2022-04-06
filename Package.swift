// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NotifySDK",
    platforms: [.iOS(.v10)],
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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.1/Libverify.zip",
                            checksum: "8ff4a21078db8a37c885ad8144ddf848bf8ef5369b5480cff154d9984bdb374f"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.1/LibverifyControls.zip",
                            checksum: "b109ff484407460503addc221fb3a237993fdd4688ac561ff5b552eacab74e36"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.1/LibverifyExt.zip",
                            checksum: "c5a83fc8b21b56b6c6089558c27b147e6e991979f7df59ece433a260365eb3fa")
    ]
)
