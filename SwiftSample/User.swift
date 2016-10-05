//
//  User.swift
//  SwiftSample
//
//  Created by Ethan Mick on 10/21/15.
//  Copyright © 2015 Ethan Mick. All rights reserved.
//

import Foundation
import CloudMine

class User: CMUser {
  
  var firstName: String?
  var lastName: String?
  
  override init!(email theEmail: String!, andPassword thePassword: String!) {
    super.init(email: theEmail, andPassword: thePassword)
    self.firstName = "Bob"
    self.lastName = "Smith"
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    self.firstName = aDecoder.valueForKey("firstName") as? String
    self.lastName = aDecoder.valueForKey("lastName") as? String
  }
  
  override func encodeWithCoder(aCoder: NSCoder) {
    super.encodeWithCoder(aCoder)
    aCoder.encodeObject(self.firstName, forKey: "firstName")
    aCoder.encodeObject(self.lastName, forKey: "lastName")
  }
  
}
