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
    var index = 0
   
    
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        let messages = ["You are awesome",
                        "you are great",
                        "you are fantastic",
                        "Genius bar",
                        "brighten",
                        "you are da bomb",
                        "hey fabulous",
                        "you are tremendous",
                        "Jony Ive",
                        "apps!"]
        
        messageLabel.text = messages[index]
        
        if index == messages.count - 1{
            index = 0
        } else {
            index = index + 1
        }
//        let message1 = "You da bomb!"
//        let message2 = "You are great!"
//        let message3 = "You are amazing!"
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2 {
//            messageLabel.text = message3
//        } else {
//            messageLabel.text = message1
//        }
        
    }
 
 
    
}

