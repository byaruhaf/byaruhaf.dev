---
date: 2021-11-28 15:28
description: A description of my first post.
tags: first, article
---
# Adding a swift package to a Multiplatform App on Xcode 12

Over the weekend i run in to this problem trying to add Swift Package to both targets of a Multiplatform app.  Below I will demonstrate the problem and one solution to the issue. 

Open Xcode 12 or newer and hit ⌘⇧N to create a new project. Navigate to the new “Multiplatform” section, select App, and press Next. Then save your project as usual.

![](Screenshot%202020-11-24%20at%2000.22.26.png)

Try to add a [swift package](https://github.com/byaruhaf/package-name) to this app, you will need to select Target either iOS or macOS but not both. The Target selected will be the only one able to access the swift package.

![](Screenshot%202020-11-24%20at%2000.23.49.png)

Trying to add the swift package again to another target results in the error below.

![](Screenshot%202020-11-24%20at%2000.23.13.png)

The package can either be added to iOS or macOS but not both,  this is where I got stuck.

One solution I found was to , Use the General pane of the project editor to specify the frameworks and libraries for the target I didn’t select when adding the swift package.
  
![](Screenshot%202020-11-24%20at%2002.17.23.png)

In my case I selected the macOS Target, then from the General pane. Under the Frameworks, Libraries and Embedded Content tap the plus + button, select the package and press Add.

![](Screenshot%202020-11-24%20at%2002.15.16.png)

The swift package can now be used by the macOS Target.

![](Screenshot%202020-11-24%20at%2002.15.33.png)

This workflow is not ideal in my opinion, so I summited a feedback with the  Xcode Team. 
