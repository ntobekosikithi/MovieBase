//
//  RouteMap.swift
//  MovieBase
//
//  Created by HS User 4 on 2016/09/30.
//  Copyright © 2016 Ntobeko. All rights reserved.
//

import UIKit

class RouteMap: UIViewController {

    @IBOutlet weak var Route: UIImageView!
    
    @IBOutlet weak var toLoc: UITextField!
    @IBOutlet weak var fromLoc: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
    @IBAction func ShowRoute(_ sender: UIButton) {
        
        if fromLoc.text == "" && toLoc.text == ""{
            
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "Specify the start and the end point"
            alert.addButton(withTitle: "Ok")
            alert.show()
        }
        else if fromLoc.text == ""{
            
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "Specify the start point"
            alert.addButton(withTitle: "Ok")
            alert.show()
        }
        else if toLoc.text == ""{
            
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "Specify the end point "
            alert.addButton(withTitle: "Ok")
            alert.show()
        }
        else{
            
            let from = fromLoc.text
            let to = toLoc.text
            
            if let url = NSURL(string: "https://dev.virtualearth.net/REST/v1/Imagery/Map/Road/Routes?wp.0="+from!+",ZA;64;1&wp.1="+to!+",ZA;66;2&key=eU3Lwcd55cVoQNXl7BDO~4madrK6kjWBwZpCjZEO_0w~AvBFlIQ-raRU8ss_bAWWOBacA2EjnxY-1ebUAgDxLDAHOP0WUS9zjzsvnex0-upv") {
                if let data = NSData(contentsOf: url as URL) {
                    Route.image =  UIImage(data: data as Data)
                }
            }
        }
        
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
