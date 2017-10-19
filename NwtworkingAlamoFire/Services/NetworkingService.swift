//
//  NetworkingRequest.swift
//  NwtworkingAlamoFire
//
//  Created by vignesh on 10/19/17.
//  Copyright © 2017 vignesh. All rights reserved.
//

import Foundation
import Alamofire

typealias JSON = [String: Any]

class NetworkingService {
    
    static let shared = NetworkingService()
    private init() {}
    func getpeople(success successBlock:@escaping (GetApiResponse)-> Void) {
        Alamofire.request("https://swapi.co/api/people/").responseJSON { (response) in
            guard let json = response.result.value as? JSON else {return}
            do {
                let getresponse = try GetApiResponse(json: json)
                 
                successBlock(getresponse)
            }catch {
                print(error)
            }
        }
    }
    
    
}
