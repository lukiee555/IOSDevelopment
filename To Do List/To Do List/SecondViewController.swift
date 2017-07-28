//
//  SecondViewController.swift
//  To Do List
//
//  Created by Lokesh Soni on 28/07/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {
    
    

    @IBAction func buttonAdd(_ sender: Any) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items:[String]
        
        if let temObject = itemsObject as? [String]{
            items = temObject
            
            items.append(itemtextField.text!)
        }else{
            items = [itemtextField.text!]
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        itemtextField.text = ""
        
        
        
    }
    @IBOutlet weak var itemtextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
      
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    


}

