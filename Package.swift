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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.0/Libverify.zip",
                            checksum: "58cd2f9d89556372cc445b3c6efd2d2e56909bc39157a56122b5957eb60a5851"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.0/LibverifyControls.zip",
                            checksum: "cccb45ba5f6c528dc1e08918207aa560717709d51b63620d37524478b5c51171"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.8.0/LibverifyExt.zip",
                            checksum: "cb336b974b1c2a2ad91bf57f37228feefa284eb34bd86d0e4df6f3060efab65a")
    ]
)
