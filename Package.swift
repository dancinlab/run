// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "RunCore",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
        .watchOS(.v10)
    ],
    products: [
        .library(name: "RunCore",          targets: ["RunCore"]),
        .library(name: "CategoryMessenger", targets: ["CategoryMessenger"]),
        .library(name: "CategoryWallet",    targets: ["CategoryWallet"]),
        .library(name: "CategorySNS",       targets: ["CategorySNS"]),
    ],
    targets: [
        .target(name: "RunCore"),
        .target(name: "CategoryMessenger",  dependencies: ["RunCore"]),
        .target(name: "CategoryWallet",     dependencies: ["RunCore"]),
        .target(name: "CategorySNS",        dependencies: ["RunCore"]),
        .testTarget(name: "RunCoreTests",   dependencies: ["RunCore"]),
    ]
)
