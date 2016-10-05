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

    // Publicly visible profile properties
    dynamic var firstName: String?
    dynamic var lastName: String?

    override init!(email theEmail: String!, andUsername theUsername: String!, andPassword thePassword: String!) {
        super.init(email: theEmail, andUsername: theUsername, andPassword: thePassword)
    }

    override init!(email theEmail: String!, andPassword thePassword: String!) {
        super.init(email: theEmail, andPassword: thePassword)
        self.firstName = "Bob"
        self.lastName = "Smith"
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.firstName = aDecoder.value(forKey: "firstName") as? String
        self.lastName = aDecoder.value(forKey: "lastName") as? String
    }

    override func encode(with aCoder: NSCoder) {
        super.encode(with: aCoder)
        aCoder.encode(self.firstName, forKey: "firstName")
        aCoder.encode(self.lastName, forKey: "lastName")
    }
}
