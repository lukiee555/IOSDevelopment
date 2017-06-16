//
//  ViewController.swift
//  Cat Years
//
//  Created by Lokesh Soni on 16/06/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textFieldCatAge: UILabel!
    
    @IBAction func buttonSubmit(_ sender: Any) {
        
        let age = Int(textField.text!)! * 7
        
        textFieldCatAge.text=String(age)
        
         
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

