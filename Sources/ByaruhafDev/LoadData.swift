//
//  File.swift
//  
//
//  Created by Franklin Byaruhanga on 22/07/2023.
//

import Foundation

class LoadData {
    class func load() {
        abouts = Abouts(education: [ About(title: "Software Engineering Undergraduate Education",
                                           subtitle: "Celal Bayar University",
                                           date: "2017 - 2021",
                                           description: ["Software Engineering Undergraduate Courses",
                                                         "C courses for university students.",
                                                         "Software and technology trainings for middle school students at the Hour of Code event.",
                                                         "Mip Hackthon second prize. Organized by Manisa Celal Bayar University and Manisa Organized Industry. Mobile application with useful features for daily life."], refLink: nil)],

                        experience: [
                            About(title: "iOS Developer",
                                  subtitle: "Trendyol",
                                  date: "Sep 2020 - Now",
                                  description: ["I work in Trendyol mobile application development team."],
                                  refLink: [[.link: "https://apps.apple.com/us/app/trendyol-alışveriş-moda/id524362642", .name: "AppStore"]]),
                            About(title: "iOS Developer",
                                  subtitle: "ILAO",
                                  date: "May 2019 - Jul 2020",
                                  description: ["I coded the designs of mobile applications, developed the backend connection.",
                                                "IOS features such as Push Notification, in-app purchases, iCloud, keychain were used.",
                                                "I published the apps to testers via Test Flight and on the AppStore."], refLink: nil),

                            About(title: "iOS Developer",
                                  subtitle: "WEVENT",
                                  date: "Sep 2019 - Jul 2020",
                                  description: ["Design implementation, integration and development for the Wevent iOS application.",
                                                "iOS accessibility, push notification, backend integration features.",
                                                "Wevent is the platform that enables users to reach events and event organizations to reach users.",
                                                "Wevent includes features purchasing tickets for events, recommending events for user’s interests."
                                               ], refLink: [[.link: "/projects/#wevent", .name: "Project"]]),
                            About(title: "Mobile Developer Intern",
                                  subtitle: "VBT",
                                  date: "Aug 2020 - Sep 2020",
                                  description: ["Flutter with iOS and Android apps,",
                                                "Unit Tests with Go Lang,",
                                                "Design patterns,",
                                                "Advanced Git course,",
                                                "User Interface design: UI, UX,"], refLink: [[.link: "https://github.com/VBT-Intership/YusufOzgul-FlutterUI", .name: "Github"],
                                                                                             [.link: "https://github.com/VBT-Intership/YusufOzgul-DiceRoller", .name: "Github"],
                                                                                             [.link: "https://github.com/VBT-Intership/YusufOzgul-Calculator", .name: "Github"]])


                        ])

        projects = Projects(items: [.init(name: "MockGen",
                                          code: "mock-gen",
                                          subheader: "Swift Mock Generator Xcode Extension",
                                          status: "Published",
                                          status_css: "published",
                                          appIcon: "images/appIcon/TimelyLogo.svg",
                                          role: "Developer",
                                          appStore_link: "",
                                          gitHub_link: "https://github.com/yusufozgul/MockGen",
                                          technologies: ["SwiftUI", "Xcode Extension", "SwiftFormatter", "macOS"],
                                          paragraphs: ["A companion app for both the 'Game of Thrones' TV show and George R.R. Martin's original book series.",
                                                       "The recap feature includes full synopsis and scene transcripts for each TV episode. While the book recap is very handy while reading the book - to keep track of where the action takes places and the characters involved.",
                                                       "Different zoom levels populates the map with a different density of details."],
                                          screenShotLink: "/upload-images/mock-gen/mockgen-icon.png", videoFile: "video/appdemo/mock_NetWorthy.mp4"),
                                    .init(name: "MockGen",
                                          code: "mock-gen",
                                          subheader: "Swift Mock Generator Xcode Extension",
                                          status: "Published",
                                          status_css: "published",
                                          appIcon: "images/appIcon/TimelyLogo.svg",
                                          role: "Developer",
                                          appStore_link: "",
                                          gitHub_link: "https://github.com/yusufozgul/MockGen",
                                          technologies: ["SwiftUI", "Xcode Extension", "SwiftFormatter", "macOS"],
                                          paragraphs: ["A companion app for both the 'Game of Thrones' TV show and George R.R. Martin's original book series.",
                                                       "The recap feature includes full synopsis and scene transcripts for each TV episode. While the book recap is very handy while reading the book - to keep track of where the action takes places and the characters involved.",
                                                       "Different zoom levels populates the map with a different density of details."],
                                          screenShotLink: "/upload-images/mock-gen/mockgen-icon.png", videoFile: "video/appdemo/mock_NetWorthy.mp4"),
        ])

        socialMediaLinks = .init(accounts: [
            .init(link: "https://github.com/byaruhaf", icon: "Githubblack.svg", name: "Github"),
            .init(link: "https://www.linkedin.com/in/byaruhaf/", icon: "LinkedInblack.svg", name: "LinkedIn"),
            .init(link: "https://stackoverflow.com/users/3369207/byaruhaf", icon: "StackOverflowblack.svg", name: "StackOverflow"),
            .init(link: "https://twitter.com/byaruhaf", icon: "Twitterblack.svg", name: "Twitter"),
        ])

        socialMediaLinksColor = .init(accounts: [
            .init(link: "https://github.com/byaruhaf", icon: "Github.svg", name: "Github"),
            .init(link: "https://www.linkedin.com/in/byaruhaf/", icon: "LinkedIn.svg", name: "LinkedIn"),
            .init(link: "https://stackoverflow.com/users/3369207/byaruhaf", icon: "StackOverflow.svg", name: "StackOverflow"),
            .init(link: "https://twitter.com/byaruhaf", icon: "Twitter.svg", name: "Twitter"),
        ])

    }
}

