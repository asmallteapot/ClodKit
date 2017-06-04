# ClodKit

<!-- comment out CI stuff for now
[![CI Status](http://img.shields.io/travis/asmallteapot/ClodKit.svg?style=flat)](https://travis-ci.org/asmallteapot/ClodKit)
[![Version](https://img.shields.io/cocoapods/v/ClodKit.svg?style=flat)](http://cocoapods.org/pods/ClodKit)
[![License](https://img.shields.io/cocoapods/l/ClodKit.svg?style=flat)](http://cocoapods.org/pods/ClodKit)
[![Platform](https://img.shields.io/cocoapods/p/ClodKit.svg?style=flat)](http://cocoapods.org/pods/ClodKit)

## Installation

ClodKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ClodKit"
```
-->

## Usage

```swift
guard let appGroup = AppGroup("group.com.asmallteapot.ClodKit_Example") else {
    fatalError("Nyah! Couldn't get the example app group")
}

// access the app group's shared user defaults
if !self.appGroup.userDefaults.bool(forKey: "ClodKitUsageViewed") {
    // get the URL or path for the app group's shared container
    print(appGroup.containerPath)
    print(appGroup.containerURL)

    // update the defaults key
    appGroup.userDefaults.set(true, forKey: "ClodKitUsageViewed")
}
```

## Author

Ellen Teapot / [@asmallteapot](https://twitter.com/asmallteapot)

## License

ClodKit is available under the MIT license. See the LICENSE file for more info.
