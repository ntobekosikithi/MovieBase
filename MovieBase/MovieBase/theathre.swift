//
//  theathre.swift
//  MovieBase
//
//  Created by HS User 4 on 2016/09/29.
//  Copyright © 2016 Ntobeko. All rights reserved.
//

import UIKit

class theathre: UITableViewCell {

    
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var overview: UITextView!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var movieTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
