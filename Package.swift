// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "ByaruhafDev",
    platforms: [.macOS(.v12)],
    products: [
        .executable(
            name: "ByaruhafDev",
            targets: ["ByaruhafDev"]
        )
    ],
    dependencies: [
        .package(name: "SplashPublishPlugin", url: "https://github.com/johnsundell/splashpublishplugin", from: "0.2.0"),
        .package(name: "TwitterPublishPlugin", url: "https://github.com/insidegui/TwitterPublishPlugin", from: "0.2.0"),
        .package(url: "https://github.com/tanabe1478/YoutubePublishPlugin.git", from: "1.0.1"),
        .package(url: "https://github.com/yonomitt/VimeoPublishPlugin.git", from: "0.2.1"),
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.8.0")
    ],
    targets: [
        .executableTarget(
            name: "ByaruhafDev",
            dependencies: ["Publish","SplashPublishPlugin","TwitterPublishPlugin","YoutubePublishPlugin","VimeoPublishPlugin"]
        )
    ]
)

//    .package(url: "https://gitlab.com/mflint/appdetailspublishplugin.git", from: "1.0.0"),
//,"AppDetailsPublishPlugin"
