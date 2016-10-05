# Swift Sample

This is an iOS CloudMine starter project using Swift 3.0.
It imports the CloudMine iOS SDK using CocoaPods.

You'll need Xcode 8.0 or later and [CocoaPods](https://cocoapods.org/)
1.0.1 or later installed. If your system meets these requirements, simply
clone the repository and run `pod install`.

```bash
git clone https://github.com/cloudmine/swift-starter.git
cd swift-starter
pod install
open SwiftSample.xcworkspace
```

## Example

Below is an example CMObject in Swift:

```
class Car: CMObject {
    dynamic var model: String?
    dynamic var make: String?
    dynamic var year: NSNumber?
    dynamic var currentLocation: CMGeoPoint?

    override init() {
        super.init()
    }

    override init(objectId theObjectId: String!) {
        super.init(objectId: theObjectId)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        make = aDecoder.decodeObject(forKey: "make") as? String
        model = aDecoder.decodeObject(forKey: "model") as? String
        year = aDecoder.decodeObject(forKey: "year") as? NSNumber
        currentLocation = aDecoder.decodeObject(forKey: "currentLocation") as? CMGeoPoint
    }

    override func encode(with aCoder: NSCoder) {
        super.encode(with: aCoder)

        aCoder.encode(make, forKey: "make")
        aCoder.encode(model, forKey: "model")
        aCoder.encode(year, forKey: "year")
        aCoder.encode(currentLocation, forKey:"currentLocation")
    }
}
```
