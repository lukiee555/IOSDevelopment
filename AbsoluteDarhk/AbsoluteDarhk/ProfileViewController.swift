//
//  ProfileViewController.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 18/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

   
    @IBOutlet weak var proflieImageView: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
   
    @IBAction func backButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //proflieImageView.layer.borderWidth=1.0
        proflieImageView.layer.masksToBounds = false
        proflieImageView.layer.borderColor = UIColor.white.cgColor
        proflieImageView.layer.cornerRadius = proflieImageView.frame.size.width/2
        proflieImageView.clipsToBounds = true
        
        
        emailLabel.text = "sonilokesh24@gmail.com"
    
    }

    

}
