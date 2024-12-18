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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.2-alpha1/Libverify.zip",
                            checksum: "df9d33e2f15a0aad722be94b12843a406d022fb12a768e5c43788ee5948393df"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.2-alpha1/LibverifyControls.zip",
                            checksum: "377aae59cac8118d24ddc16f44bef9f6b9c9a695b218e71734c7da4061fcf4ef"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.2-alpha1/LibverifyExt.zip",
                            checksum: "a991529ade29561c33050f59c0dbf15a4493972951ca3324a2e1d0d104fd06c1")
    ]
)
