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
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.0-beta4/Libverify.zip",
                            checksum: "991cae4ff08be6cb8e50e3e025b48e1358e8c1c0ee33b1367d5336ef4a43cac1"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.0-beta4/LibverifyControls.zip",
                            checksum: "3232293f8739a33ca3f76404d24f28996522c3d34234cb313f37980b6242124a"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/notifySDK/notify-sdk-ios/releases/download/v2.0.0-beta4/LibverifyExt.zip",
                            checksum: "ab3d052a55a5c3b373c9b459ac244978ecbcac91cdef5853f9b972f1137806f8")
    ]
)
