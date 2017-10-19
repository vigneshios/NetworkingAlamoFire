//
//  GetApiResponse.swift
//  NwtworkingAlamoFire
//
//  Created by vignesh on 10/19/17.
//  Copyright © 2017 vignesh. All rights reserved.
//

import Foundation

struct GetApiResponse {
    let crew : [Crew]
    
    init(json: JSON) throws {
        guard let results = json["results"] as? [JSON] else {throw NetworkingError.badNetworkingRequest}
        let crews = results.map { Crew(json: $0)}.flatMap{ $0 }
        self.crew = crews
        
    }
    
    
    
}
