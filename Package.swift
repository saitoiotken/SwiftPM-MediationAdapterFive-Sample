// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "FluctSDKMediationAdapterFive",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "FluctSDKMediationAdapterFive",
            targets: ["FluctSDKMediationAdapterFive"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/voyagegroup/FluctSDK-iOS-Swift-Package.git",
            exact: "0.0.1"
        ),
        .package(
            url: "https://github.com/ly-ads-network/swift-package-manager-fivead.git",
            exact: "3.0.1"
        ),
    ],
    targets: [
        .target(
            name: "FluctSDKMediationAdapterFive",
            dependencies: [
                .product(name: "FluctSDK", package: "FluctSDK-iOS-Swift-Package"),
                .product(name: "FiveAd", package: "swift-package-manager-fivead")
            ],
            publicHeadersPath: "include"
        ),
    ]
)
