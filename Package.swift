// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "helix-store-query-line",
    products: [.executable(name: "helix-store-query-line", targets: ["App"])],
    targets: [.executableTarget(name: "App", path: "src")]
)
