//
//  Show+JSON.swift
//  MovieBase
//
//  Created by HS User 4 on 2016/09/29.
//  Copyright © 2016 Ntobeko. All rights reserved.
//

import Foundation
struct ShowError: Error {}

extension shows {
    init(json: [String : Any]) throws {
        guard let title = json["original_name"] as? String,
            let posterPath = json["poster_path"] as? String,
            let date = json["first_air_date"] as? String,
            let vote_avg = json["vote_average"] as? Double,
            let Overview = json["overview"] as? String
            else {
                throw MovieError()
        }
        self.title = title
        self.posterPath = posterPath
        self.date = date
        self.vote_avg = vote_avg
        self.Overview = Overview
    }
}
