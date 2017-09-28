//
//  ViewController.swift
//  hustle-mode
//
//  Created by Lokesh Soni on 28/09/17.
//  Copyright © 2017 ezorro. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    @IBOutlet weak var cloudView: UIView!
    @IBOutlet weak var darkBG: UIImageView!
    @IBOutlet weak var powerbtn: UIButton!
    @IBOutlet weak var onlbl: UILabel!
    @IBOutlet weak var hustlelb: UILabel!
    @IBOutlet weak var rocket: UIImageView!
    
    var player: AVAudioPlayer!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

            let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
            let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
            
        }catch let  error as NSError{
            print(error.description)
        }
     
    
    }
    
    
    
    @IBAction func powerbtn(_ sender: Any) {
        
        cloudView.isHidden = false
        darkBG.isHidden = true
        powerbtn.isHidden = true
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 80, width: 375, height: 480)
            
        }) { (finished) in
            self.hustlelb.isHidden = false
            self.onlbl.isHidden = false
        }
        
        
        
        
        
        
        
    }

 

}

