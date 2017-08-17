//
//  MainScreenViewController.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 14/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    
    @IBOutlet weak var whoIMageView: UIImageView!
    @IBOutlet weak var EventsImageView: UIImageView!
    @IBOutlet weak var MusciImageView: UIImageView!
    @IBOutlet weak var bookUIImageView: UIImageView!
    @IBOutlet weak var HallImageView: UIImageView!
    @IBOutlet weak var GallerImageView: UIImageView!
    @IBOutlet weak var SettingsImageView: UIImageView!
    @IBOutlet weak var ProfileImageView: UIImageView!
    
    @IBAction func whoImage(_ sender: Any) {
        
        performSegue(withIdentifier: "WhoWeAre", sender: nil)
    }
    
    
    @IBAction func galleryImage(_ sender: Any) {
        
         performSegue(withIdentifier: "Gallery", sender: nil)
    }

    
    override func viewDidLoad() {
       
        super.viewDidLoad()

        whoIMageView.loadGif(name: "1")
        EventsImageView.loadGif(name: "4")
        MusciImageView.loadGif(name: "3")
        bookUIImageView.loadGif(name: "2")
        HallImageView.loadGif(name: "6")
        GallerImageView.loadGif(name: "9")
        SettingsImageView.loadGif(name: "5")
        ProfileImageView.loadGif(name: "7")
 
        
    
    }
   



    }
