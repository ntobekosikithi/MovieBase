//
//  Movie+JSON.swift
//  MovieBase
//
//  Created by HS User 4 on 2016/09/27.
//  Copyright © 2016 Ntobeko. All rights reserved.
//

import Foundation
struct MovieError: Error {}

extension Movie {
    init(json: [String : Any]) throws {
        guard let title = json["title"] as? String,
            let posterPath = json["poster_path"] as? String,
            let date = json["release_date"] as? String,
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
