//
//  person.swift
//  personInfo
//
//  Created by Tianxia Dong on 05/02/2018.
//  Copyright © 2018 Tianxia Dong. All rights reserved.
//

import Foundation

class person{
    //declare
    var name: String;
    var phone: String;
    var address: String;
    var image:String;
    var url: String;
    
    //init function
    init() {
        self.name = "John Doe"
        self.phone = "n/s"
        self.address = "n/a"
        self.image = "none.jpg"
        self.url = "n/a"
        
    }
    
    init(name:String, phone:String, address:String, image:String, url: String) {
        self.name = name
        self.phone = phone
        self.address = address
        self.image = image
        self.url = url
    }
    
    //class methods
    func printPerson() {
        print("name: \(self.name) phone: \(self.phone)")
        
    }
    
}
