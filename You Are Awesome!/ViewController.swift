//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Kelly Pickreign on 1/13/19.
//  Copyright © 2019 Kelly Pickreign. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        if messageLabel.text == "You are awesome!"{
            messageLabel.text = "You are great!"
        } else if messageLabel.text == "You are great!"{
            messageLabel.text = "You are amazing!"
        } else {
            messageLabel.text = "You are awesome!"
        }
        
    }
 
 
    
}

