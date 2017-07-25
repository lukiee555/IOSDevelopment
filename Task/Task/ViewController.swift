//
//  ViewController.swift
//  Task
//
//  Created by Lokesh Soni on 24/07/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var UIimageEvents: UIImageView!
    @IBOutlet weak var UIimageWhoweAre: UIImageView!
    @IBOutlet weak var UIimageGallery: UIImageView!
    @IBOutlet weak var UIimageProfile: UIImageView!
    @IBOutlet weak var UIimageSettings: UIImageView!
    @IBOutlet weak var UIimageHall: UIImageView!
    @IBOutlet weak var UIimageBook: UIImageView!
    @IBOutlet weak var UIimageMusicLib: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIimageWhoweAre.loadGif(name: "1")
        UIimageEvents.loadGif(name: "4")
        UIimageMusicLib.loadGif(name: "3")
        UIimageBook.loadGif(name: "2")
        UIimageHall.loadGif(name: "6")
        UIimageSettings.loadGif(name: "5")
        UIimageProfile.loadGif(name: "7")
        UIimageGallery.loadGif(name: "9")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

