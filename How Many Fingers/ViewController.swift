//
//  ViewController.swift
//  How Many Fingers
//
//  Created by He Chaoyue on 11/27/16.
//  Copyright © 2016 He Chaoyue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var fingersTextField: UITextField!
    @IBAction func guess(_ sender: Any) {
        
        let diceRoll = String(arc4random_uniform(6))
        if fingersTextField.text == diceRoll{
            resultLabel.text = "You're right!"
        } else {
            
            resultLabel.text = "Wrong! It was a " + diceRoll + "."
        }
    }
    @IBOutlet var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

