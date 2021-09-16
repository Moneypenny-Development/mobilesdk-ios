// swift-tools-version:5.3

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
      path: "SnapEngageSDK/SnapEngageSDK",
      exclude: ["Info.plist"],
      resources: [.copy("Resources/index.html")],
      publicHeadersPath: "SnapEngageSDK.h"
    ),
    .testTarget(
      name: "SnapEngageTests",
      dependencies: [
        "SnapEngage"
      ],
      path: "SnapEngageSDK/SnapEngageSDKTests",
      exclude: ["Info.plist"]
    ),
  ]
)
