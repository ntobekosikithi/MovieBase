//
//  nowplaying.swift
//  MovieBase
//
//  Created by HS User 4 on 2016/09/29.
//  Copyright © 2016 Ntobeko. All rights reserved.
//

import UIKit

class nowplaying: UITableViewCell {

    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var overview: UITextView!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var rating: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
