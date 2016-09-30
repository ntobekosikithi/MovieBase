//
//  SearchRequest.swift
//  MovieBase
//
//  Created by HS User 4 on 2016/09/30.
//  Copyright © 2016 Ntobeko. All rights reserved.
//

import Foundation
import Alamofire

var movieName: String! = nil
class SearchMoviesRequest {
    
    
    
    static func query(name: String)
    {
        movieName = name
    }
    static func Results(completion: @escaping ([Movie]) -> Void) {
        
        let url = "http://api.themoviedb.org/3/search/movie?api_key=968cca12b1a8492036b1e1e05af57e3f&query=" + movieName
        
        Alamofire.request(url).responseJSON { (jsonResponse) in
            if let unwrappedDict = jsonResponse.result.value as? [String : Any] {
                if let results = unwrappedDict["results"] as? [[String : Any]] {
                    
                    let models = results.map({ (item) in
                        return try! Movie(json: item)
                    })
                    completion(models)
                }
            }
        }
    }
    
    
}
