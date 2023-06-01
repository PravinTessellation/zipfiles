// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SimplePackage",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SimpleMath",
            targets: ["SimpleMath"]),
        .library(
            name: "Addition",
            targets: ["Addition"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "SimpleMath", path: "./Sources/SimpleMath.xcframework"),
        .binaryTarget(name: "Addition", path: "./Sources/Addition.xcframework"),
    ]
)

//x-xcode-log://306885A0-F6AA-41EC-8A0D-FF31FD3147A6 target 'SimplePackage' referenced in product 'SimplePackage' could not be found; valid targets are: 'SimpleMath', 'SimplePackageTests'



/*
let package = Package(
    name: "ToDoPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ToDoPackage",
            targets: ["ToDoPackage", "ToDoSDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ToDoPackage",
            dependencies: []),
        .binaryTarget(name: "ToDoSDK", path: "artifacts/ToDoSDK.xcframework"),
        .testTarget(
            name: "ToDoPackageTests",
            dependencies: ["ToDoPackage"]),
    ]
)
*/
