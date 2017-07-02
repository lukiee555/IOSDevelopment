//
//  ViewController.swift
//  isITPrime
//
//  Created by Lokesh Soni on 02/07/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func buttonCheck(_ sender: Any) {
       
        if let userEnteredString = textField.text
        {
            let UserEnteredInteger = Int(userEnteredString)
            
            if let number = UserEnteredInteger {
                
                var isPrime = true
                
                if(number == 1){
                    isPrime = false
                }
                
                var i = 2
                while i<number{
                    if number % i == 0 {
                        isPrime = false
                    }
                    i+=1
                }
                
                
                if isPrime {
                    textFieldans.text = "\(number) is Prime"
                }else{
                    textFieldans.text = "\(number) is not Prime"
                }
            }
            else {
                textFieldans.text = "Plese Enter Positive whole number"
                
            }
        }
        
    
        
    
    }
    
    
    @IBOutlet weak var textFieldans: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

