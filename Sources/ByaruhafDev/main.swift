import Foundation
import Publish
import Splash
import Plot
import SplashPublishPlugin
import TwitterPublishPlugin
import YoutubePublishPlugin
import VimeoPublishPlugin
import GistPublishPlugin
import ReadingTimePublishPlugin

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
    var description = "Just another blog about iOS programming with Swift & SwiftUI"
    var language: Language { .english }
    var imagePath: Path? {"images/social.png"}

    init() {
        LoadData.load()
    }
}

// This will generate your website using the built-in Foundation theme:
//try ByaruhafDev().publish(withTheme: .foundation)

//try ByaruhafDev().publish(using: [
//    .installPlugin(.splash(withClassPrefix: "swift-")),
//    .installPlugin(.twitter()),
//    .installPlugin(.youtube()),
//    .installPlugin(.vimeo()),
//    .copyResources(),
//    .addMarkdownFiles(),
//    .generateHTML(withTheme: .byaruhafdevTheme,
//    .generateRSSFeed(including: [.articles]),
//    .generateSiteMap(excluding: [ "404" ])
//])
//.installPlugin(.appDetails()),

//.generateHTML(withTheme: .byaruhafdevTheme(using: navigation, with: projects), indentation: .tabs(1)),

//.generateHTML(withTheme: .foundation),

try ByaruhafDev().publish(withTheme: .byaruhafdevTheme,
                          indentation: nil,
                          at: nil,
                          rssFeedSections: [.articles, .projects],
                          rssFeedConfig: nil,
                          additionalSteps: [.installPlugin(.readingTime(wordsPerMinute: 40)),
                                            .generateSiteMap(),
                          ],
                          plugins: [.twitter(),
                                    .youtube(),
                                    .gist(renderer: ColorGistRenderer()),
                                    .splash(withClassPrefix: ""),
                                    //.publishGallery()
                          ])

class ColorGistRenderer: GistRenderer {
    func render(gist: EmbeddedGist) throws -> String {
        let highlighter = SyntaxHighlighter(format: HTMLOutputFormat())
        return gist.files.map { file in
            return "<pre><code>" + highlighter.highlight(file.content) + "</pre></code>"
        }.joined(separator: "")
    }
}
