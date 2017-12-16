//
//  ViewController.swift
//  Calculator
//
//  Created by Lokesh Soni on 14/12/17.
//  Copyright © 2017 nothing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var display: UILabel!
    
    private var userIsInMiddleOfTyping = false
    
    @IBAction private func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInMiddleOfTyping{
            let textCurrentlyDisplay = display.text!
            display.text=textCurrentlyDisplay + digit
        }else{
            display.text = digit
        }
        
        userIsInMiddleOfTyping = true
        
    }
    var savedProgram: CalculatorBrain.PropertyList?
    @IBAction func save() {
        savedProgram = brain.program
    }
    
    @IBAction func restore() {
        
        if savedProgram != nil {
            brain.program = savedProgram!
            displayValue = brain.result
        }
    }
    private var displayValue:Double {
        get{
            return Double(display.text!)!
        }
        
        set{
            display.text = String(newValue)
        }
    }
    
    private var brain = CalculatorBrain()
    
    @IBAction private func performOperation(_ sender: UIButton) {
        
        if userIsInMiddleOfTyping{
            brain.setOperand(operand: displayValue)
            userIsInMiddleOfTyping = false
        }
        
        if let mathematicalSymbol = sender.currentTitle{
            brain.performOperation(symbol: mathematicalSymbol)
        }
        
        displayValue = brain.result
    }
    
    
}

