//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Lokesh Soni on 04/01/18.
//  Copyright © 2018 nothing. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  
    @IBAction func cloaseButton(_ sender: UIButton) {
        performSegue(withIdentifier: UNWINDSEGUE_TO_CHANNEL, sender: nil)
    }
    
}
