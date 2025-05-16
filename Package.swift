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
        .package(url: "https://github.com/odnoklassniki/tracer-lite-ios.git", "1.1.0"..<"2.0.0"),
    ],
    targets: [
        Target.binaryTarget(name: "Libverify",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.6/Libverify.zip",
                            checksum: "db04ba56938b5c253994a5366aac215008f7b4e86e872121bdcf953a5cd2108d"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.6/LibverifyControls.zip",
                            checksum: "2e9edc2f3fe4704f222abf2292bf5d309579e5ed1a208885868a2098320946e9"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.9.6/LibverifyExt.zip",
                            checksum: "1c8fad900257bfbe5b43778ac1ceb0d1609bf9cd6bd1687e665e5523b6ac0dc5")
    ]
)
