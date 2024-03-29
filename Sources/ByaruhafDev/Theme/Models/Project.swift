//
//  File.swift
//  
//
//  Created by Franklin Byaruhanga on 21/07/2023.
//

import Foundation

public struct Project {
    public init(name: String, code: String, subheader: String, status: String, status_css: String, appIcon: String, role: String, appStore_link: String, gitHub_link: String, testflight_link: String, technologies: [String], paragraphs: [String], screenShotLink: String, videoFile: String) {
        self.name = name
        self.code = code
        self.subheader = subheader
        self.status = status
        self.status_css = status_css
        self.appIcon = appIcon
        self.role = role
        self.appStore_link = appStore_link
        self.gitHub_link = gitHub_link
        self.testflight_link = testflight_link
        self.technologies = technologies
        self.paragraphs = paragraphs
        self.screenShotLink = screenShotLink
        self.videoFile = videoFile
    }

    let name: String
    let code: String
    let subheader: String
    let status: String
    let status_css: String
    let appIcon: String
    let role: String
    let appStore_link: String
    let gitHub_link: String
    let testflight_link: String
    let technologies: [String]
    let paragraphs: [String]
    let screenShotLink: String
    let videoFile: String
}

public struct Projects {
    public init(items: [Project]) {
        self.items = items
    }

    let items: [Project]
}

