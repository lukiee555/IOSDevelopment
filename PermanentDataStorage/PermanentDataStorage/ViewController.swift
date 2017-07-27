//
//  ViewController.swift
//  PermanentDataStorage
//
//  Created by Lokesh Soni on 27/07/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        UserDefaults.standard.set("Rob", forKey: "name")
        
       
        let nameObject = UserDefaults.standard.object(forKey:"name")
        
        if let name = nameObject as? String {
            print(name)
        }
        
        let arr = [1,2,3,4]
        UserDefaults.standard.set(arr, forKey: "Array")
        let arrayObject = UserDefaults.standard.object(forKey: "Array")
        
        if let array = arrayObject as? NSArray {
            print(array)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

