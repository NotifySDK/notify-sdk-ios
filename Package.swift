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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.5/Libverify.zip",
                            checksum: "64ca90ed67e6fefe237873fc898708c9524addef27dfb9ed24594eb95eb27ed9"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.5/LibverifyControls.zip",
                            checksum: "f367ff1999e94e187e2e08328d425bf52d99c8b6f788dd87677212978b473ad0"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.5/LibverifyExt.zip",
                            checksum: "f6692e3c0be240e41e60d127b82b8f544596d41c1c42bfab4faac8e7c76a564b")
    ]
)
