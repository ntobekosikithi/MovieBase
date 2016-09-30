//
//  showcell.swift
//  MovieBase
//
//  Created by HS User 4 on 2016/09/29.
//  Copyright © 2016 Ntobeko. All rights reserved.
//

import UIKit

class showcell: UITableViewCell {

    @IBOutlet weak var overview: UITextView!
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var year: UILabel!
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
