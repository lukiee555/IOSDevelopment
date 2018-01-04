//
//  ChatVC.swift
//  Smack
//
//  Created by Lokesh Soni on 04/01/18.
//  Copyright © 2018 nothing. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    @IBOutlet weak var menuButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer() )
        
    }

    
}
