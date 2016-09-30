//
//  showRequest.swift
//  MovieBase
//
//  Created by HS User 4 on 2016/09/29.
//  Copyright © 2016 Ntobeko. All rights reserved.
//

import Foundation
import Alamofire

class showRequest {
    
    static func popularShows(completion: @escaping ([shows]) -> Void) {
        
        let url = "https://api.themoviedb.org/3/tv/popular?api_key=968cca12b1a8492036b1e1e05af57e3f"
        
        Alamofire.request(url).responseJSON { (jsonResponse) in
            if let unwrappedDict = jsonResponse.result.value as? [String : Any] {
                if let results = unwrappedDict["results"] as? [[String : Any]] {
                    
                    let models = results.map({ (item) in
                        return try! shows(json: item)
                    })
                    completion(models)
                }
            }
        }
    }
    
    
}
