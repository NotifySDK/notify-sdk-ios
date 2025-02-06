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
    ],
    targets: [
        Target.binaryTarget(name: "Libverify",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.1/Libverify.zip",
                            checksum: "77ce0819ac704be724fcc7cdb1a6830a6920c2b611afdc6b135f7761f1eb932b"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.1/LibverifyControls.zip",
                            checksum: "17b29b65dac244860b899f59909c5d0029e484aa83b01a0593abb8bc9320f3ec"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.1/LibverifyExt.zip",
                            checksum: "c7315ba27661bc74fb286ab3e64838c0fbf28158e986e09658b73e10e46fd83d")
    ]
)
