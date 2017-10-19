//
//  Crew.swift
//  NwtworkingAlamoFire
//
//  Created by vignesh on 10/19/17.
//  Copyright © 2017 vignesh. All rights reserved.
//

import Foundation

struct Crew {
    
    //private let homeWorldLink : String
    
    let birthYear:     String
    let gender:        String
    let haircolor:     String
    let height:        String
    let name:          String
    
    
    init?(json: JSON) {
        guard let birthYear =   json["birth_year"] as? String,
        let gender =            json["gender"] as? String,
        let haircolor =         json["hair_color"] as? String,
        let height =            json["height"] as? String,
       // let homeWorldLink =     json["homeWorld"] as? String,
        let name =              json["name"] as? String
        
        else {return nil}
        self.birthYear = birthYear
        self.gender = gender
        self.haircolor = haircolor
        self.height = height
        //self.homeWorldLink = homeWorldLink
        self.name = name
        
        
    }
}
