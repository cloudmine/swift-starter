//
//  Car.swift
//  SwiftSample
//
//  Created by Ethan Mick on 10/20/15.
//  Copyright © 2015 Ethan Mick. All rights reserved.
//

import Foundation

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