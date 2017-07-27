//
//  ViewController.swift
//  Whats My Number
//
//  Created by Lokesh Soni on 27/07/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldnumber: UITextField!
   
    @IBOutlet weak var Labelshownumber: UILabel!
    
    @IBAction func buttonSave(_ sender: Any) {
       
        
        UserDefaults.standard.set(textFieldnumber.text, forKey: "number")
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let numberObject = UserDefaults.standard.object(forKey: "number")
        
        if let number = numberObject as? String {
            Labelshownumber.text = number
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

