---
date: 2020-11-28 15:28
description: A description of my first post.
tags: first, article
---
# What is the “Swift Language Version” Xcode setting for?

Prior to Swift 4, the version of the compiler and the language were one and the same. But since Swift 4, the compiler can run in a compatibility mode for previous Swift versions. check more info on [compatibility modes](https://swift.org/blog/swift-4-0-released/) in the Swift 4.0 release notes. The Xcode build setting `SWIFT_VERSION` set's the compiler flag `-swift-version` which is the language mode. From the swift compiler print out below this parameter only changes how the input is interpreted.

>   -swift-version \<vers\>   Interpret input according to a specific Swift language version number

Thus When you select Swift Language Version to 4.2, this does not mean use Swift 4.2 compiler. The compiler version will still be 5.1.3, the Swift Language Version setting instructs the compiler to run in Swift 4.2 compatibility mode. The compatibility mode means you may not need to modify your swift 4.2 code to use the new version of the compiler. Because the compiler running in compatibility mode allows Swift version 4.2 code to compile and run alongside code from version 5 and later. 

![](https://i.stack.imgur.com/r5Ofc.jpg)

 The Swift 5 compiler with compatibility mode can compile code written with either ***Swift 4 syntax***, **Swift 4.2 syntax**, or **Swift 5 syntax**. 

Here is a code example, create a file test.swift with code below:


```swift
//code written before siwft 5
let firstName = "michael jackson"
let offset = firstName.endIndex.encodedOffset

// Check swift version being used.
#if swift(>=5.2)
print("Hello, Swift 5.2")

#elseif swift(>=5.1)
print("Hello, Swift 5.1")

#elseif swift(>=5.0)
print("Hello, Swift 5.0")

#elseif swift(>=4.2)
print("Hello, Swift 4.2")

#elseif swift(>=4.1)
print("Hello, Swift 4.1")

#elseif swift(>=4.0)
print("Hello, Swift 4.0")

#endif
```

suppose the above code was written before swift 5 using the swift 4 compiler 
this code will compile with no error's as shown below.

![](https://i.stack.imgur.com/JMzuV.jpg)

After swift 5 is released if you try to compile this code with Swift 5 compiler as shown below.

![](https://i.stack.imgur.com/9fnOm.jpg)

You will get the warning shown above since `encodedOffset` is deprecated in swift 5. You could downgrade and use the swift 4 compiler or you can use the Swift 5 compiler in compatibility mode with the compiler flag -swift-version as shown below.

![](https://i.stack.imgur.com/IU9nI.jpg)

It's important to note that **Swift 4 compiler**, and the **Swift 5 compiler in Swift-4 compatibility mode** are not the same thing. New swift 5 language features are normally available to the swift 5 compiler running compatibility mode. This allows developers to use the new features even when they can't upgrade to swift 5. The new Swift 5 features will not be available to the **Swift 4 compiler**.