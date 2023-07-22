//
//  File.swift
//  
//
//  Created by Franklin Byaruhanga on 22/07/2023.
//

import Foundation
import Plot
import Publish

struct ThemeHeader<T: Website>: Component {
    var context: PublishingContext<T>
    var selectedSection: T.SectionID?

    var body: Component {
        Header {
            Node<T>.raw("<link rel=\"stylesheet\" href=\"/navigationStyle.css\" type=\"text/css\"/>")
            Navigation {
                Div {
                    Input(type: HTMLInputType(rawValue: "checkbox")!)
                        .id("check")

                    Label("") {
                        Image("/upload-images/base/menu-icon.svg")
                            .attribute(Attribute<T>(name: "width", value: "30"))
                            .attribute(Attribute<T>(name: "height", value: "30"))
                            .class("checkbtn")
                    }
                    .attribute(Attribute<T>(name: "for", value: "check"))

                    Label("") {
                        Link("Franklin Byaruhanga", url: "/")
                    }
                    .class("logo")

                    List {
                        Link("Home", url: "/")
                            .class(selectedSection?.rawValue == ByaruhafDev.SectionID.home.rawValue ? "active" : "")
                        Link("Articles", url: "/articles")
                            .class(selectedSection?.rawValue == ByaruhafDev.SectionID.articles.rawValue ? "active" : "")
                        Link("Projects", url: "/projects")
                            .class(selectedSection?.rawValue == ByaruhafDev.SectionID.projects.rawValue ? "active" : "")
                        Link("About", url: "/about")
                            .class(selectedSection?.rawValue == ByaruhafDev.SectionID.about.rawValue ? "active" : "")
                        Link("Contact", url: "/contact")
                            .class(selectedSection?.rawValue == ByaruhafDev.SectionID.contact.rawValue ? "active" : "")
                    }
                    .class("navContent")
                    .id("hoverEnabled")
                }
                .class("navArea")
            }
            .class("header")
            .class("navBar")
        }
    }
}

