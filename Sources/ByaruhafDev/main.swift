import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct ByaruhafDev: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
        case projects
        case about
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://byaruhaf.dev")!
    var name = "Franklin Byaruhanga"
    var description = "A description of ByaruhafDev"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try ByaruhafDev().publish(withTheme: .foundation)
