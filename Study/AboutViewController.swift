//
//  AboutViewController.swift
//  Study
//
//  Created by Sabbir on 7/6/19.
//  Copyright © 2019 Sabbir. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {


    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var decriptions: UITextView!
    @IBOutlet weak var close: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        decriptions.layer.cornerRadius = 10
        decriptions.layer.borderWidth = 1
        decriptions.layer.borderColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
        close.layer.cornerRadius = 10
        close.layer.borderWidth = 1
        close.layer.borderColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)

    }
    

    @IBAction func close(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    

}
