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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.1.2/Libverify.zip",
                            checksum: "1558508aebfac3cb5f63a53efef8c45bac8efc5ccf66850e7032e6078a721e40"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.1.2/LibverifyControls.zip",
                            checksum: "f302ea9edad2be5fe51ffc21fbdf68639ae294bc661900d3608a6265b0096bf6"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.1.2/LibverifyExt.zip",
                            checksum: "9061aef9cdf839d9e37acf499c029255a082d6fee12cb03dd442d186c9039f8c")
    ]
)
