//
//  WeatherViewController.swift
//  Study
//
//  Created by Sabbir on 7/6/19.
//  Copyright © 2019 Sabbir. All rights reserved.
//

import UIKit

class Notes: UIViewController {
    
    var note = "Edit here"

    @IBOutlet var descriptions: UITextView!
    @IBOutlet weak var close: UIButton!
    @IBOutlet weak var save: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptions.text = note
        
        descriptions.layer.cornerRadius = 10
        descriptions.layer.borderWidth = 1
        descriptions.layer.borderColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
        save.layer.cornerRadius = 10
        save.layer.borderWidth = 1
        save.layer.borderColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
        close.layer.cornerRadius = 10
        close.layer.borderWidth = 1
        close.layer.borderColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
    }
    
    
    @IBAction func save(_ sender: UIButton) {
        
        note += descriptions.text
        descriptions.text = note
        
    }
    
    
    
    
    @IBAction func close(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
        
        
    }
    
    
    
    

}
