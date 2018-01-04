//
//  LoginVC.swift
//  Smack
//
//  Created by Lokesh Soni on 04/01/18.
//  Copyright © 2018 nothing. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func createAccountButton(_ sender: UIButton) {
        performSegue(withIdentifier: TO_CREATEACCOUNT, sender: nil)
    }
    
}
