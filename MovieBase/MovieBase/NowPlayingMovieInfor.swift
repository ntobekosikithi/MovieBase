//
//  NowPlayingMovieInfor.swift
//  MovieBase
//
//  Created by HS User 4 on 2016/09/27.
//  Copyright © 2016 Ntobeko. All rights reserved.
//

import UIKit

class NowPlayingMovieInfor: UIViewController {

    
    @IBOutlet weak var movieTitle: UILabel!
    //@IBOutlet weak var movieTitle: UILabel!
    
    var Mtitle: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTitle.text = "werthert5e"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
