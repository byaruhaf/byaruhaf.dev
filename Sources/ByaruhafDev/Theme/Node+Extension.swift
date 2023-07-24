//
//  File.swift
//  
//
//  Created by Franklin Byaruhanga on 22/07/2023.
//

import Publish
import Plot
import Foundation

extension Node where Context == HTML.BodyContext {
    static func aboutPage<T: Website>(on site: T) -> Node {
        return .div(
            .class("item-page"),
            .summarySection(),
//            socialMediaSection(),
//            .br(),
//            .br(),
            .experienceSection(on: site, with: abouts.experience),
            .br(),
            .br(),
            .br(),
            .br(),
            .educationSection(on: site, with: abouts.education)
        )
    }

    static func summarySection() -> Node {
        return .div(
            .style("  text-align: justify; text-justify: inter-word;"),
                .class("introduction"),
                .text("I am a telecom engineer turned iOS App Developer with a strong proficiency in the Swift Programming language. My passion lies in creating innovative software solutions. I thoroughly enjoy working with various frameworks and technologies, including Swift, SwiftUI, UIKit, Combine, CloudKit, Core Data, Realm, and Firebase."),
                .br(),
                .br(),
                .text("When I'm not hunched over my screen working on my newest project, I actively contribute to open-source iOS/Swift-related projects and enjoy sharing knowledge through the Kodeco community Discord and the iOS Developer community on Twitter.")
//                .text("I've also fully built multiple iOS apps published to the App Store.")
            )
    }

    static func socialMediaSection() -> Node {
        return
            .div(
            .h1(
                .text("Social Media"),
                .style("text-align: center;")
            ),
            .id("socialMedia"),
            .forEach(socialMediaLinksColor.accounts, { account in
                    .a(
                        .id("socialMedia"),
                        .href(account.link),
                        .target(HTMLAnchorTarget(rawValue: "_blank")!),
                        .raw("<img src=\"/images/social/\(account.icon)\" width=\"90\" height=\"90\">")
//                        .span(
//                            .id("socialMedia"),
//                            .text(account.name)
//                        )
                    )
            })
        )
    }

    static func educationSection<T: Website>(on site: T, with datas: [About]) -> Node {
        return .div(
            .h1(
                .text("Education"),
                .style("text-align: center;")
            ),
            .section(
                .id("cd-timeline"),
                .forEach(datas) { about in
                        .aboutItem(on: site, with: about)
                }
            )
        )
    }

    static func experienceSection<T: Website>(on site: T, with datas: [About]) -> Node {
        return .div(
            .h1(
                .text("Experience"),
                .style("text-align: center;")
            ),
            .section(
                .id("cd-timeline"),
                .forEach(datas) { about in
                        .aboutItem(on: site, with: about)
                }
            )
        )
    }


    static func aboutItem<T: Website>(on site: T, with data: About) -> Node {
        return .div(
            .class("cd-timeline-block"),
            .div(.class("cd-timeline-img cd-movie")),
            .div(
                .div(
                    .text(data.date),
                    .style("text-align: right; color: white;")
                ),

                    .class("cd-timeline-content"),
                .h2(
                    .text(data.title),
                    .style("color: white;")
                ),
                .h6(
                    .text(data.subtitle),
                    .style("color: white;")),

                    .forEach(data.description) { text in
                            .ul(
                                .li(
                                    .p(
                                        .text(text)
                                    )
                                ),
                                .style("color: white;")
                            )
                    },

                    .table(
                        .tr(
                            .style("text-indent: 25px; text-decoration: underline; color: lightgreen;"),
                            .forEach(data.refLink ?? []) { link in
                                    .td(
                                        .a(
                                            .text(link[AboutLinkType.name] ?? ""),
                                            .text(" "),
                                            .href(link[AboutLinkType.link] ?? "")
                                        )
                                    )
                            }
                        )
                    )
            )
        )
    }
}


extension Node where Context == HTML.BodyContext {
    // Projects Page

    static func projectList<T: Website>(for items: [Project], on site: T) -> Node {
        return .div(
            .h1(
                .text("Projects"),
                .br(),
                .br()
            ),
            .forEach(items) { item in
                    .div(
                        .class("project-row"),
                        .div(
                            .class("project-column-left"),
                            .div(
                                .class("video"),
                                .div(
                                    .class("video-inner"),
                                    .video(
                                        .source(
                                            .src("https://www.byaruhaf.dev/\(item.videoFile)"),
                                            .attribute(named: "type", value: "video/mp4")
                                        ),
                                        .attribute(named: "autoplay"),
                                        .attribute(named: "loop"),
                                        .attribute(named: "muted"),
                                        .attribute(named: "playsinline")
                                    )
                                )
                            )

                        ),
                        .div(
                            .class("project-column-right"),
                            .div(
                                .class("app-row"),
                                .div(
                                    .class("app-column-left"),
                                    .img(.id(item.code), .class("app_icon"),.src("/\(item.appIcon)"))
                                ),
                                .div(
                                    .class("app-column-right"),
                                    .h2(.class("app_name"),.text(item.name)),
                                    .h6(.class("app_header"), .text(item.subheader))
                                )
                            ),
                            .div(
                                .class("app_description"),
                                .forEach(item.paragraphs) { paragraph in
                                        .p(.text(paragraph))
                                },
                                .h4(.text("My Role")),
                                .p(.text(item.role)),
                                .h4(.text("Technologies")),
                                .ul(.class("tech-list"), .forEach(item.technologies) { tech in
                                        .li(
                                            //.class("tag"),
                                            .text(tech)
                                        )
                                }),
                                .table(
                                    .tr(
                                        .if(item.gitHub_link != "",
                                            .td(
                                                .a(
                                                    .img(
                                                        .class("app_download"),
                                                        .src("/images/location/github.png"),
                                                        .init(name: "width", value: "150")

                                                    ),
                                                    .href(item.gitHub_link)
                                                )

                                            )
                                        ),
                                        .if(item.testflight_link != "",
                                            .td(
                                                .a(
                                                    .img(
                                                        .class("app_download"),
                                                        .src("/images/location/testflight.png"),
                                                        .init(name: "width", value: "150")
                                                    ),
                                                    .href(item.appStore_link)
                                                )
                                            )
                                        ),
                                        .if(item.appStore_link != "",
                                            .td(
                                                .a(
                                                    .img(
                                                        .class("app_download"),
                                                        .src("/images/location/appstore.png"),
                                                        .init(name: "width", value: "150")
                                                    ),
                                                    .href(item.appStore_link)
                                                )
                                            )
                                        )
                                    )
                                ),
                                .br()
                            )
                        )
                    )
            }
        )
    }

    // Index Page projects list

    static func indexProjectList<T: Website>(for items: [Project], on site: T) -> Node {
        return .ul(
            .class("ul-project-container"), //compact grid latest item-list
            .forEach(items) { item in
                    .li(
                        .class("li-project-item"),
                        .a(
                            .href("/projects#\(item.code)"),

                                .div(
                                    .img(.src(item.appIcon)),
                                    .br(),
                                    .text(item.name),
                                    .p(
                                        .class("appSubheader"),
                                        .text(item.subheader)
                                    )
                                )
                        )
                    )
            }
        )
    }
}


extension Node where Context == HTML.BodyContext {
    static func contactForm<T: Website>(on site: T) -> Node {
        return .div(
            .div(
                .id("socialMedia"),
                .forEach(socialMediaLinks.accounts, { account in
                        .a(
                            .id("socialMedia"),
                            .href(account.link),
                            .target(HTMLAnchorTarget(rawValue: "_blank")!),
                            .raw("<img style=\"padding-bottom:\" 20px; src=\"/images/social/\(account.icon)\" width=\"30\" height=\"30\">"),
                            .span(
                                .id("socialMedia"),
                                .text(account.name)
                            )
                        )
                })
            ),
            .raw("""
            <div data-tf-widget="xbz0F4bg" data-tf-opacity="100" data-tf-iframe-props="title=Contact" data-tf-transitive-search-params data-tf-medium="snippet" style="width:100%;height:500px;"></div><script src="//embed.typeform.com/next/embed.js"></script>
            """)
        )
    }
}
