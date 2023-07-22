// swift-tools-version:5.8

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
        .package(name: "SplashPublishPlugin", url: "https://github.com/johnsundell/splashpublishplugin.git", from: "0.2.0"),
        .package(url: "https://github.com/insidegui/TwitterPublishPlugin.git", from: "0.2.0"),
        .package(url: "https://github.com/tanabe1478/YoutubePublishPlugin.git", from: "1.0.1"),
        .package(url: "https://github.com/alexito4/ReadingTimePublishPlugin", from: "0.3.0"),
        .package(url: "https://github.com/yonomitt/VimeoPublishPlugin.git", from: "0.2.1"),
        .package(url: "https://github.com/thomaslupo/GistPublishPlugin.git", from: "0.1.0"),
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.9.0")
    ],
    targets: [
        .executableTarget(
            name: "ByaruhafDev",
            dependencies: ["Publish","SplashPublishPlugin","TwitterPublishPlugin","YoutubePublishPlugin","VimeoPublishPlugin","GistPublishPlugin", "ReadingTimePublishPlugin"]
        )
    ]
)

//
//
