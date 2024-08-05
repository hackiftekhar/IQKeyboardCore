// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "IQKeyboardCore",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "IQKeyboardCore",
            targets: ["IQKeyboardCore"]
        )
    ],
    targets: [
        .target(name: "IQKeyboardCore",
            path: "IQKeyboardCore",
            resources: [
                .copy("Assets/PrivacyInfo.xcprivacy")
            ],
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        )
    ]
)
