//
//  ViewController.swift
//  Calculator
//
//  Created by Lokesh Soni on 14/12/17.
//  Copyright © 2017 nothing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var userIsInMiddleOfTyping = false
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInMiddleOfTyping{
            let textCurrentlyDisplay = display.text!
            display.text=textCurrentlyDisplay + digit
        }else{
            display.text = digit
        }
        
        userIsInMiddleOfTyping = true
    
    }
    
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInMiddleOfTyping = false
        
        if let mathematicalSymbol = sender.currentTitle{
            if mathematicalSymbol == "π"{
                display.text = String(Double.pi)
            }
        }
    }
    

}

