//
//  ViewController.swift
//  GameHowManyFingers
//
//  Created by Lokesh Soni on 01/07/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fingerTextField: UITextField!
    
    
    
    @IBAction func guessButton(_ sender: Any) {
        let diceRoll = String(arc4random_uniform(6))
        
        if fingerTextField.text == diceRoll {
            resultLabel.text = "You're right!"
        }
        else{
            resultLabel.text="Wrong it was a " + diceRoll + "."
        }
        fingerTextField.text = ""
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

