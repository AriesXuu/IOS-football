//
//  people.swift
//  personInfo
//
//  Created by Yeqi Xu on 06/02/2018.
//  Copyright © 2018 Tianxia Dong. All rights reserved.
//

import Foundation

class Member{
    
    // properties
    var data : Array <Player>!
    // init
    init(){
        // init data with some static Person objs
        data = [
            
        ]
        
    }
    init(fromXMLFile:String){
        // need a parser
        let parser = XMLPeopleParser(name:fromXMLFile)
        //begin parsing
        parser.beginParsing()
        //get the data
        self.data = parser.people
        
    }
    // methods
    func getCount() -> Int {return self.data.count}
    func getperson(id:Int) -> Player {return self.data[id]}
    func getpeople() -> Array<Player> {return self.data}
    
}
