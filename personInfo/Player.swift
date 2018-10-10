//
//  person.swift
//  personInfo
//
//  Created by Yeqi Xu on 05/02/2018.
//  Copyright © 2018 Yeqi Xu. All rights reserved.
//

import Foundation

class Player{
    //declare
    var name: String
    var position: String
    var height: String
    var weight: String
    var image:String
    var nationality:String
    var age:String
    var url:String
   
    
    //init function
    init() {
        self.name = "John Doe"
        self.position = "n/s"
        self.height = "n/a"
        self.weight = "n/a"
        self.nationality = "n/a"
        self.image = "none.jpg"
        self.age = "n/a"
        self.url = "n/a"
        
    }
    
    init(name:String, position:String, height:String, weight:String, nationality:String, image:String, age:String, url:String) {
        self.name = name
        self.position = position
        self.height = height
        self.weight = weight
        self.nationality = nationality
        self.image = image
        self.age = age
        self.url = url
        
    }
    

   
    
}
