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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.0-beta7/Libverify.zip",
                            checksum: "b7c03110715d187624226bf2da88fb45107713a2e363faea742e0a2ee468959a"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.0-beta7/LibverifyControls.zip",
                            checksum: "38515c333dfc0dccb6f3523fd3eb8214f338ed26d288371b1a7442aaf7ab5a40"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.0-beta7/LibverifyExt.zip",
                            checksum: "f68236338313670a05ec782cec9c863bd8316eb39c19f59602d453f9203c6b61")
    ]
)
