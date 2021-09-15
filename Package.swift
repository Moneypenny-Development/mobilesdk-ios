// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "SnapEngageSDK",
  platforms: [
    .iOS(.v13),
  ],
  products: [
    .library(
      name: "SnapEngageSDK",
      targets: ["SnapEngage"]
    )
  ],
  targets: [
    .target(
      name: "SnapEngage",
      path: "SnapEngageSDK/SnapEngageSDK"
    ),
    .testTarget(
      name: "SnapEngageTests",
      dependencies: [
        "SnapEngage"
      ],
      path: "SnapEngageSDK/SnapEngageSDKTests"
    ),
  ]
)
