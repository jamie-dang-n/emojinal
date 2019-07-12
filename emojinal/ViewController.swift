//
//  ViewController.swift
//  emojinal
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Anika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let emojis = ["😤" : "frustrated", "😭" : "depressed"]
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        let emojiMessage = ["frustrated" : "It's okay, struggle is how we grow! You'll do great, but maybe a break is warranted.", "depressed" : "Cry it out my buddy. You'll get through this!"]
        //figure out how to get the values to show up
        let alertController = UIAlertController(title: "emojinal", message: emojis[selectedEmotion!], preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

}

