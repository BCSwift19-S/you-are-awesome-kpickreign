//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Kelly Pickreign on 1/13/19.
//  Copyright © 2019 Kelly Pickreign. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var awesomeImageView: UIImageView!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    
    
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
        
//        var newIndex = -1
        
        var newIndex: Int // declares but doesnt initialize newIndex
        
        //show a message
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        //Show an image
        repeat{
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
      //  get a random number to use in our soundName file
        repeat{
            newIndex = Int.random(in: 0..<numberOfSounds)
        } while soundIndex == newIndex
        
        imageIndex = newIndex
        
        //play a sound
        var soundName = "sound\(soundIndex)"
        // can we load in the file soundName?
        if let sound = NSDataAsset(name: soundName){
           //check if sound.data is a sound file
            do {
            try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch{
                // if sound.data is not a valid audio file
                print("ERROR: data in \(soundName) could not be played as a sound")
            }
        }else{
            
            //if reading in tha NSDataAsset didnt work tell the developer/report the error
            print("ERROR: file \(soundName) didn't load")
        }
        
        
        
        
//        messageLabel.text = messages.randomElement()!
        
//        messageLabel.text = messages[index]
//
//        if index == messages.count - 1{
//            index = 0
//        } else {
//            index = index + 1
//        }
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

