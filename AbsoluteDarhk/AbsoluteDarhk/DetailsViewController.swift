//
//  DetailsViewController.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 17/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var catagoryImageView: UIImageView!
    
    var image: UIImage!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        catagoryImageView.image = image
        
        navigationItem.title =  "Photo"

        
    }

   
}
