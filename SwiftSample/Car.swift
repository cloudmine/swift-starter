//
//  Car.swift
//  SwiftSample
//
//  Created by Ethan Mick on 10/20/15.
//  Copyright © 2015 Ethan Mick. All rights reserved.
//

import Foundation
import CloudMine

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
    self.make = aDecoder.value(forKey: "make") as? String
    self.model = aDecoder.value(forKey: "model") as? String
  }
  
  override func encode(with aCoder: NSCoder!) {
    super.encode(with: aCoder)
    aCoder.encode(self.make, forKey: "make")
    aCoder.encode(self.model, forKey: "model")
  }
  
}
