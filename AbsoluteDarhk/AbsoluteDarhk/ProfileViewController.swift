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
   
    @IBAction func backButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //proflieImageView.layer.borderWidth=1.0
        proflieImageView.layer.masksToBounds = false
        proflieImageView.layer.borderColor = UIColor.white.cgColor
        proflieImageView.layer.cornerRadius = proflieImageView.frame.size.width/2
        proflieImageView.clipsToBounds = true    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
