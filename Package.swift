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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.3/Libverify.zip",
                            checksum: "0782c9d48630d3f38b963fa26c34f4ae2dc1233e34f28eb028dc7ee63710b469"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.3/LibverifyControls.zip",
                            checksum: "6c0325ca687778eb89f5216bbb7451a3529c6c8bddd26ef673b3c35870eef826"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.3/LibverifyExt.zip",
                            checksum: "10d221ee1d68e3dff1f0eb48ec971dfa39ad8abe4da57026d79fa187013f74a7")
    ]
)
