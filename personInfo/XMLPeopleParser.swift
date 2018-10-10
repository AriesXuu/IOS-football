//
//  XMLPeopleParser.swift
//  personInfo
//
//  Created by Yeqi Xu on 16/02/2018.
//  Copyright © 2018 Yeqi Xu. All rights reserved.
//

import UIKit

class XMLPeopleParser: NSObject, XMLParserDelegate {
    
    //declare the name property to work with
    var name : String
    
    init(name:String) {self.name = name}
    
    //declare the variable to work with
    var pName, pPosition, pHeight, pWeight, pNationality, pAge, pImage, pUrl : String!
    var passDate : Bool = false
    var elemId : Int!
    
    var player = Player()
    var people = [Player]()
    
    var tags = ["name", "position", "height", "weight", "nationality", "age", "image", "url"]
    
    func beginParsing(){
        // get the file url
        let fileURL = URL(fileURLWithPath: self.name, relativeTo: Bundle.main.bundleURL)
        
        //make a parser object
        let parser = XMLParser(contentsOf: fileURL)
        
        //delegete it and start parsing
        parser?.delegate = self
        parser?.parse()
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        //reset the spy vars
        if tags.contains(elementName){
            passDate = false
            elemId = -1
        }
        // test if </person>
        if elementName == "player"{
            // new person found then add it to people
            people.append(Player(name: pName, position: pPosition, height: pHeight, weight: pWeight, nationality: pNationality, image: pImage, age: pAge, url: pUrl))
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        
        // if data is to pass then store it in a pVar
        if passDate{
            switch elemId{
                
                case 0 : pName = string
                case 1 : pPosition = string
                case 2 : pHeight = string
                case 3 : pWeight = string
                case 4 : pNationality = string
                case 5 : pAge = string
                case 6 : pImage = string
                case 7 : pUrl = string
                default : break
            }
            
        }
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
         //pulled elementName then reset the spy variables if one of tages
        if tags.contains(elementName){
            // reset the spy-s
            passDate = true
            elemId = tags.index(of: elementName)
            
        }
    }
    
   
    
    
}
