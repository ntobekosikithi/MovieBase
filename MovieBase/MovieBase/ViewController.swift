//
//  ViewController.swift
//  MovieBase
//
//  Created by HS User 4 on 2016/09/26.
//  Copyright © 2016 Ntobeko. All rights reserved.
//-29,736476/31,071696

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var firstItem: UIButton!
    
    @IBOutlet weak var secondItem: UIButton!
    
    @IBOutlet weak var fourthItem: UIButton!
    @IBOutlet weak var thirdItem: UIButton!
    
    @IBOutlet weak var firthItem: UIButton!
   
    @IBOutlet weak var btnBottom: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        
        firstItem.layer.cornerRadius = firstItem.frame.height/2
        firstItem.layer.borderWidth = 1.5
        firstItem.layer.borderColor = UIColor.white.cgColor
        firstItem.clipsToBounds = true
        
        //
        
        secondItem.layer.borderWidth = 1.5
        secondItem.layer.borderColor = UIColor.white.cgColor
        secondItem.layer.cornerRadius = secondItem.frame.height/2
        secondItem.clipsToBounds = true
        
        
        //
        thirdItem.layer.borderWidth=1.5
        thirdItem.layer.borderColor = UIColor.white.cgColor
        thirdItem.layer.cornerRadius = thirdItem.frame.size.height/2
        thirdItem.clipsToBounds = true
        
        
        //
        fourthItem.layer.borderWidth=1.5
        fourthItem.layer.borderColor = UIColor.white.cgColor
        fourthItem.layer.cornerRadius = fourthItem.frame.size.height/2
        fourthItem.clipsToBounds = true
        
        
        //
        firthItem.layer.borderWidth=1.5
        firthItem.layer.borderColor = UIColor.white.cgColor
        firthItem.layer.cornerRadius = firthItem.frame.size.height/2
        firthItem.clipsToBounds = true
        
        btnBottom.layer.cornerRadius = 5
        let colorTop =  UIColor(red: 50.0/255.0, green: 179.0/255.0, blue: 151.0/255.0, alpha: 1.0).cgColor
        
        
        let colorBottom = UIColor(red: 88.0/255.0, green: 120.0/255.0, blue: 170.0/255.0, alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [ colorTop, colorBottom]
        gradientLayer.locations = [ 0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

