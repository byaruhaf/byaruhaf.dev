import Foundation
import Publish
import Plot
import SplashPublishPlugin
import TwitterPublishPlugin
import YoutubePublishPlugin
import VimeoPublishPlugin

// This type acts as the configuration for your website.
struct ByaruhafDev: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case articles
        case projects
        case about
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://byaruhaf.dev")!
    var name = "Franklin Byaruhanga"
    var description = "Just another blog about programming - iOS, macOS, Swift"
    var language: Language { .english }
    var imagePath: Path? {"images/social.png"}
}

// This will generate your website using the built-in Foundation theme:
//try ByaruhafDev().publish(withTheme: .foundation)

try ByaruhafDev().publish(using: [
    .installPlugin(.splash(withClassPrefix: "swift-")), // 1
    .installPlugin(.twitter()),
    .installPlugin(.youtube()),
    .installPlugin(.vimeo()),
    .copyResources(), // 3
    .addMarkdownFiles(), // 4
    .generateHTML(withTheme: .foundation), // 9
    .generateRSSFeed(including: [.articles]), // 10
    .generateSiteMap(excluding: [ "404" ]) // 11
])
//.installPlugin(.appDetails()),
