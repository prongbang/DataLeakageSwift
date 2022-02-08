# DataLeakageSwift

Safe Data Leakage via Application Background Screenshot for iOS.

## Swift Package Manager

In your `Package.swift` file, add `DataLeakageSwift` dependency to corresponding targets:

```swift
let package = Package(
  dependencies: [
    .package(url: "https://github.com/prongbang/DataLeakageSwift.git", from: "1.0.0"),
  ],
)
```

## How to use

```swift
import DataLeakageSwift

class AppDelegate: FlutterAppDelegate {

    private let dataLeakageSwift = DataLeakageSwift()

    override func applicationDidBecomeActive(_ application: UIApplication) {
        dataLeakageSwift.removeBlurScreen()
    }

    override func applicationWillResignActive(_ application: UIApplication) {
        dataLeakageSwift.blurScreen()
    }
}
```
