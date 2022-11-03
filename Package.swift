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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.2/Libverify.zip",
                            checksum: "c66c260619da4bf886c42e1e96efaae8fdb649cd4267184c82112cd24029227c"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.2/LibverifyControls.zip",
                            checksum: "ac8b516dd00eafaccadc12300cf09e79ec19a469afb329fa1c49c1e6686e8b69"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.2/LibverifyExt.zip",
                            checksum: "a5847d6e6beec10928dc3c15f6180c4110c62d40cbb01b450673b92efcfa5a8e")
    ]
)
