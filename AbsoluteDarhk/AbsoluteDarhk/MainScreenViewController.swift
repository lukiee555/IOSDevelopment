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
    @IBOutlet weak var BookImageView: UIImageView!
    @IBOutlet weak var HallImageView: UIImageView!
    @IBOutlet weak var GallerImageView: UIImageView!
    @IBOutlet weak var SettingsImageView: UIImageView!
    @IBOutlet weak var ProfileImageView: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        whoIMageView.loadGif(name: "")
        EventsImageView.loadGif(name: "")
        MusciImageView.loadGif(name: "")
        BookImageView.loadGif(name: "2")
        HallImageView.loadGif(name: "")
        GallerImageView.loadGif(name: "")
        SettingsImageView.loadGif(name: "")
        ProfileImageView.loadGif(name: "")
        
        
    
    }


    }
