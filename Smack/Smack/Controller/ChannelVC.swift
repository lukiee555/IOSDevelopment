//
//  ChannelVC.swift
//  Smack
//
//  Created by Lokesh Soni on 04/01/18.
//  Copyright © 2018 nothing. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBAction func prepareforUnwind(segue: UIStoryboardSegue){
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
}
