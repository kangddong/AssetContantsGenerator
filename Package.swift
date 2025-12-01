// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "AssetContantsGenerator",
  products: [
    .executable(name: "AssetContantsExec", targets: ["AssetContantsExec"]),
    .plugin(name: "AssetContants", targets: ["AssetContants"])
  ],
  targets: [
    .executableTarget(
      name: "AssetContantsExec",
      path: "Plugins/AssetContantsExec"
    ),
    .plugin(
      name: "AssetContants",
      capability: .buildTool(),
      dependencies: ["AssetContantsExec"]
    )
  ]
)
