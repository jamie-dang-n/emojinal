//
//  ViewController.swift
//  emojinal
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Anika. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
    //consider how to print rando messages if one key has more values than other
    let customMessages = ["frustrated" : ["You'll do great, sweaty, dont worry!", "breathe mdude, you'll be fiiine.", "Uh oh, me too buddy.", "Yikes!", "Kronks!", "Jinkies!", "Aaaaaagh!!!!!", "uh oh"], "depressed" : ["Go ahead and cry it out i guess", "me too dawg.", "keep trying! or take a break lol, woteva.", "oopsies", "ugh"]]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let emojis = ["😤" : "frustrated", "😭" : "depressed"]
    var number = 0
    
    
        @IBAction func showMessage(sender: UIButton){
        let selectedEmotion = sender.titleLabel?.text
    
            
        if selectedEmotion == "😤" {
            number = Int.random(in: 0...7)
        } else if selectedEmotion == "😭" {
            number = Int.random(in: 0...4)
            
        }
            
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[number]
        let alertController = UIAlertController(title: "emojinal", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        alertController.addAction(UIAlertAction(title: "bye", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
    }

}

