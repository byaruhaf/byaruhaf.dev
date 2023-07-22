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

//    static func indexProjectList<T: Website>(for items: [Project], on site: T) -> Node {
//        return .ul(
//            .class("ul-project-container"), //compact grid latest item-list
//            .forEach(items) { item in
//                    .li(
//                        .class("li-project-item"),
//                        .a(
//                            .href(Path("\("/projects#\(item.code)")")),
//                            .div(
//                                .img(.src(item.appIcon), .init(name: "width", value: "70")),
//                                .br(),
//                                .text(item.name),
//                                .p(
//                                    .class("appSubheader"),
//                                    .text(item.subheader)
//                                )
//                            )
//                        )
//                    )
//            }
//        )
//    }

//    static func projectList<T: Website>(for items: [Project], on site: T) -> Node {
//        return .div(
//            .h1(
//                .text("Projects"),
//                .br(),
//                .br()
//            ),
//            .forEach(items) { item in
//                    .div(
//                        .class("project-row"),
//                        .div(
//                            .class("project-column-left"),
//                            .div(
//                                .class("video"),
//                                .img(
//                                    .src(item.screenShotLink),
//                                    .init(name: "width", value: "300")
//                                )
//                            )
//                        ),
//                        .div(
//                            .class("project-column-right"),
//                            .div(
//                                .class("app-row"),
//                                .div(
//                                    .class("app-column-left"),
//                                    .img(.id(item.code), .class("app_icon"),.src("\(item.appIcon)"), .init(name: "width", value: "70"))
//                                ),
//                                .div(
//                                    .class("app-column-right"),
//                                    .h2(.class("app_name"),.text(item.name)),
//                                    .h6(.class("app_header"), .text(item.subheader))
//                                )
//                            ),
//                            .div(
//                                .class("app_description"),
//                                .forEach(item.paragraphs) { paragraph in
//                                        .p(.text(paragraph))
//                                },
//                                .h4(.text("My Role")),
//                                .p(.text(item.role)),
//                                .h4(.text("Technologies")),
//                                .ul(.class("tech-list"), .forEach(item.technologies) { tech in
//                                        .li(
//                                            .class("tech"),
//                                            .text(tech)
//                                        )
//                                }),
//                                .table(
//                                    .tr(
//                                        .if(item.gitHub_link != "",
//                                            .td(
//                                                .a(
//                                                    .img(
//                                                        .class("app_download"),
//                                                        .src("/upload-images/base/github.png"),
//                                                        .init(name: "width", value: "150")
//
//                                                    ),
//                                                    .href(item.gitHub_link)
//                                                )
//
//                                            )
//                                        ),
//                                        .if(item.appStore_link != "",
//                                            .td(
//                                                .a(
//                                                    .img(
//                                                        .class("app_download"),
//                                                        .src("/upload-images/base/appstore.png"),
//                                                        .init(name: "width", value: "150")
//                                                    ),
//                                                    .href(item.appStore_link)
//                                                )
//                                            )
//                                        )
//                                    )
//                                ),
//
//                                    .br()
//                            )
//                        )
//                    )
//            }
//        )
//    }
}


extension Node where Context == HTML.BodyContext {
    static func aboutPage<T: Website>(on site: T) -> Node {
        return .div(
            .class("item-page"),
            .educationSection(on: site, with: abouts.experience),
            .br(),
            .br(),
            .br(),
            .br(),
            .experienceSection(on: site, with: abouts.education)
        )
    }

    static func educationSection<T: Website>(on site: T, with datas: [About]) -> Node {
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

    static func experienceSection<T: Website>(on site: T, with datas: [About]) -> Node {
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
                            .forEach(data.refLink ?? []) { link in
                                    .td(
                                        .a(
                                            .style("color: white;"),
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
                                            .src("https://www.leonte.dev/\(item.videoFile)"),
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
                                                        .src("/upload-images/base/github.png"),
                                                        .init(name: "width", value: "150")

                                                    ),
                                                    .href(item.gitHub_link)
                                                )

                                            )
                                        ),
                                        .if(item.appStore_link != "",
                                            .td(
                                                .a(
                                                    .img(
                                                        .class("app_download"),
                                                        .src("/upload-images/base/appstore.png"),
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
