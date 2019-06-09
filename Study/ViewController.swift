//
//  ViewController.swift
//  Study
//
//  Created by Sabbir on 7/6/19.
//  Copyright © 2019 Sabbir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var study: UIButton!
    @IBOutlet weak var chat: UIButton!
    @IBOutlet weak var mapShow: UIButton!
    @IBOutlet weak var weatherCheck: UIButton!
    @IBOutlet weak var about: UIButton!
    
    let radius: CGFloat = 10
    let border: CGFloat = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        study.layer.cornerRadius = radius
        chat.layer.cornerRadius = radius
        mapShow.layer.cornerRadius = radius
        weatherCheck.layer.cornerRadius = radius
        about.layer.cornerRadius = radius
        
        study.layer.borderWidth = border
        chat.layer.borderWidth = border
        mapShow.layer.borderWidth = border
        weatherCheck.layer.borderWidth = border
        about.layer.borderWidth = border
        
        study.layer.borderColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        chat.layer.borderColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        mapShow.layer.borderColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        weatherCheck.layer.borderColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        about.layer.borderColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
        
        
    }


}

