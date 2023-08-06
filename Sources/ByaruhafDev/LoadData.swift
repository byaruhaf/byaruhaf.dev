//
//  File.swift
//  
//
//  Created by Franklin Byaruhanga on 22/07/2023.
//

import Foundation

class LoadData {
    class func load() {
        abouts = Abouts(education: [ About(title: "iOS Accelerator Bootcamp",
                                           subtitle: "Kodeco (Raywenderlich)",
                                           date: "2020",
                                           description: ["Controls, Outlets, UIKit",
                                                         "Swift Fundamentals",
                                                         "Auto layout, Testing, and Debugging",
                                                         "Table Views & Collection Views","Saving Data in iOS", "Networking with URLSession", "GCD Concurrency & Memory Management" , "Design Patterns", "Animation"], refLink: [[.link: "https://www.kodeco.com/13699056-meet-the-2020-graduates-of-our-ios-android-bootcamps", .name: "Bootcamp Graduates List"]])],

                        experience: [
                            About(title: "iOS App Developer",
                                  subtitle: "Meet Dates",
                                  date: "2022 - Now",
                                  description: ["Transforming Design: Utilizing my knowledge of SwiftUI, I skillfully translated the provided designs into a seamlessly functional and visually captivating iOS App, ensuring an exceptional user experience.", "Stream & Firebase SDK Integration: I integrated SDK services, such as authentication, Firestore,  Chat and push notifications, into the iOS app.", "Proximity with Geohashing: I implemented proximity-based search features utilizing the Geohashing algorithm for the dating app."],
                                  refLink: [[.link: "https://testflight.apple.com/join/GsHXgPic", .name: "Test Flight"], [.link: "https://youtu.be/SHw_U64oBzA", .name: "Video Demo"]]),
                            About(title: "iOS Bootcamp Instructor",
                                  subtitle: "Kodeco",
                                  date: "2022 - Now",
                                  description: ["Guiding students, providing advice, and explaining teaching material.",
                                                "Conducting office hours to ensure students have the ability to receive extra attention.",
                                                "Development of bootcamp curriculum and materials.", "Shaping the next group of iOS developers entering the workforce."], refLink: [[.link: "https://store.kodeco.com/bootcamp/ios", .name: "Kodeco Bootcamp"]]),
                            About(title: "Open-source Contributions",
                                  subtitle: "Mozilla Firefox, kodeco, Unwrap",
                                  date: "2020 - Now",
                                  description: ["Fixing Bugs, warnings, failing tests",
                                                "Removed unused functions & types",
                                                "Fixing mismatch between Apps UI & Apps Design",
                                                "Upgrade code for new Xcode and Swift Verison",
                                                "Migration from CocoaPods to SPM"], refLink: [[.link: "https://github.com/mozilla-mobile/firefox-ios/commits?author=byaruhaf", .name: "Firefox"],
                                                                                             [.link: "https://github.com/razeware/emitron-iOS/commits?author=byaruhaf", .name: "Kodeco"],
                                                                                             [.link: "https://github.com/twostraws/Unwrap/commits?author=byaruhaf", .name: "Unwrap"]])
                        ])

        projects = Projects(items: [.init(name: "Meet Dates",
                                          code: "meet-dates",
                                          subheader: "Dating App",
                                          status: "Published",
                                          status_css: "published",
                                          appIcon: "images/appIcon/MeetDatesLogo.png",
                                          role: "Sole developer",
                                          appStore_link: "",
                                          gitHub_link: "",
                                          testflight_link: "https://testflight.apple.com/join/GsHXgPic",
                                          technologies: ["SwiftUI", "Core Location", "Firebase","async-await" ,"Stream", "TestFlight", "Combine", "Xcode", "Xcode-Cloud"],
                                          paragraphs: ["Meet is a dates marketplace that efficiently helps users plan and share experiences.",
                                                       "Dates are listed on the home view based on the user's geographical location.",
                                                       "In the plan view, users can post, agree upon, and track dates.", "Once a date is confirmed, users can chat with the other party involved in the date."],
                                          screenShotLink: "", videoFile: "video/appdemo/Meet.mp4"),
                                    .init(name: "Atlas",
                                          code: "atlas",
                                          subheader: "Weather App (Sample)",
                                          status: "Published",
                                          status_css: "published",
                                          appIcon: "images/appIcon/AtlasLogo.png",
                                          role: "Sole developer",
                                          appStore_link: "",
                                          gitHub_link: "https://github.com/byaruhaf/Atlas",
                                          testflight_link: "",
                                          technologies: ["UIKit", "SwiftUI", "MapKit", "Core Location", "URLSession", "Combine", "Xcode", "Xcode-Cloud"],
                                          paragraphs: ["Atlas is a partial weather app demo that utilizes the openweathermap.org API. The app displays the current temperature at the user's current location.",
                                                       "It offers a range of features such as the ability to add, remove, view, and save temperature data for favorite cities. Users can also swipe to access a map view, which displays their favorite cities on the map.", "Moreover, the app allows users to customize the theme, app icon, and temperature units to suit their preferences."],
                                          screenShotLink: "", videoFile: "video/appdemo/Atlas.mp4"),
                                    .init(name: "Samaritan",
                                          code: "samaritan",
                                          subheader: "Web Browser App (Sample)",
                                          status: "Published",
                                          status_css: "published",
                                          appIcon: "images/appIcon/SamaritanLogo.png",
                                          role: "Sole developer",
                                          appStore_link: "",
                                          gitHub_link: "https://github.com/byaruhaf/Samaritan",
                                          testflight_link: "",
                                          technologies: ["UIKit", "WebKit", "Realm", "wkwebview", "UserDefaults", "Xcode"],
                                          paragraphs: ["Samaritan Browser is a partial implementation of Safari functionality",
                                                       "Back/Forward function implemented with Realm as Persistence",
                                                       "Both the Zoom settings & webview navigation history are restored when App Relaunches."],
                                          screenShotLink: "", videoFile: "video/appdemo/Samaritan.mp4"),
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

