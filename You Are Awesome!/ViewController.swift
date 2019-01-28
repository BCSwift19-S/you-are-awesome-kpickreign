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
    @IBOutlet weak var soundSwitch: UISwitch!
    
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
    
    func nonRepeatingRandomNumber(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex: Int // declares but doesnt initialize newIndex
        repeat{
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
            return newIndex
    }
  
    func playSound (soundName: String, audioPlayer: inout AVAudioPlayer) {
            // can we load in the file soundName?
            if let sound = NSDataAsset(name: soundName){
                //check if sound.data is a sound file
                do {
                    try audioPlayer = AVAudioPlayer(data: sound.data)
                    audioPlayer.play()
                } catch{
                    // if sound.data is not a valid audio file
                    print("ERROR: data in \(soundName) could not be played as a sound")
                }
            }else{
                
                //if reading in tha NSDataAsset didnt work tell the developer/report the error
                print("ERROR: file \(soundName) didn't load")
            }
    }
        
        
    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if soundSwitch.isOn == false && soundIndex != -1{
            awesomePlayer.stop()
        }
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
        
      
        
        //show a message
        index = nonRepeatingRandomNumber(lastNumber: index, maxValue: messages.count)
//        repeat{
//            newIndex = Int.random(in: 0..<messages.count)
//        } while index == newIndex
//        index = newIndex
        messageLabel.text = messages[index]
        
        //Show an image
        imageIndex = nonRepeatingRandomNumber(lastNumber: imageIndex, maxValue: numberOfImages)
//        repeat{
//            newIndex = Int.random(in: 0..<numberOfImages)
//        } while imageIndex == newIndex
//        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        

//        if soundSwitch.isOn == true {
        if soundSwitch.isOn {
            //  get a random number to use in our soundName file
            soundIndex = nonRepeatingRandomNumber(lastNumber: soundIndex, maxValue: numberOfSounds)
            //        repeat{
            //            newIndex = Int.random(in: 0..<numberOfSounds)
            //        } while soundIndex == newIndex
            //        soundIndex = newIndex
            
            //play a sound
            let soundName = "sound\(soundIndex)"
            playSound(soundName: soundName, audioPlayer: &awesomePlayer)
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

