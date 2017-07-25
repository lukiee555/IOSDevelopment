//
//  ViewController.swift
//  Data Storage
//
//  Created by Lokesh Soni on 12/07/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
//        UserDefaults.standard().set("Rob",forkey:"name")
//        
//        let name = UserDefaults.standard().object(forkey: "name")
//        
//        print (name)
        
        UserDefaults.standard.set("Rob", forKey: "name")
        
        let name = UserDefaults.standard.object(forKey: "name")
        
        print(name)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

