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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.3.1/Libverify.zip",
                            checksum: "c1d6557b5e55f2b10c97e140cec94abab6ffa99fd332fb13dc5dced06ed34c0e"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.3.1/LibverifyControls.zip",
                            checksum: "5e95886189e0fe1369deb3300dd9e3ece83c4df71b60404203883b539a78533a"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.3.1/LibverifyExt.zip",
                            checksum: "3320538ab2250cf814d923ad3e664b45fad4ab2643627217c3ffe2f6c241d021")
    ]
)
