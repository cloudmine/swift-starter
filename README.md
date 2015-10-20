# Swift Sample

This is an example project using Swift. It has the CloudMine SDK configured as a cocoapod. To start:

```
$ git clone git@github.com:cloudmine/swift-starter.git
$ cd swift-starter
$ pod install
```

And then open the `SwiftSample.xcworkspace`.

The CloudMine Framework does not yet compile to a framework, so the Podfile does not include `use_frameworks!`. Rather, it relies on the Bridging-Header.

Below is an example CMObject in Swift:

```
class Car: CMObject {

  var make: String?

  var model: String?

  init(make: String, model: String) {
    super.init()
    self.make = make
    self.model = model
  }

  required init!(coder aDecoder: NSCoder!) {
    super.init(coder: aDecoder)
    self.make = aDecoder.valueForKey("make") as? String
    self.model = aDecoder.valueForKey("model") as? String
  }

  override func encodeWithCoder(aCoder: NSCoder!) {
    super.encodeWithCoder(aCoder)
    aCoder.encodeObject(self.make, forKey: "make")
    aCoder.encodeObject(self.model, forKey: "model")
  }

}
```
