// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "RxDataSources",
  defaultLocalization: "en",
  platforms: [
    .iOS(.v13),
  ],
  products: [
    .library(name: "RxDataSources", targets: ["RxDataSources"]),
    .library(name: "Differentiator", targets: ["Differentiator"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMinor(from: "6.0.0")),
  ],
  targets: [
    .target(name: "RxDataSources", dependencies: [
      "Differentiator",
      .product(name: "RxSwift", package: "RxSwift"),
      .product(name: "RxCocoa", package: "RxSwift"),
    ]),
    .target(name: "Differentiator")
  ],
  swiftLanguageModes: [.v5]
)
