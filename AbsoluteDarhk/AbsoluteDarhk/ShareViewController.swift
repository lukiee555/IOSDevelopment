//
//  ShareViewController.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 24/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit
import SafariServices

class ShareViewController: UIViewController {
    @IBAction func twitter(_ sender: Any) {
        
        
        let svc = SFSafariViewController(url: URL(string : "https://twitter.com/absolute_darhk")!)
        self.present( svc, animated: true, completion: nil)
    }
   
    @IBAction func facebook(_ sender: Any) {
        let svc = SFSafariViewController(url: URL(string : "https://www.facebook.com/Absolutedarhk/")!)
        self.present( svc, animated: true, completion: nil)
        
        
    }
    @IBAction func insta(_ sender: Any) {
        
        
        let svc = SFSafariViewController(url: URL(string : "https://www.instagram.com/absolute_darhk/")!)
        self.present( svc, animated: true, completion: nil)
    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    
    }

 
}
