//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Lokesh Soni on 04/01/18.
//  Copyright © 2018 nothing. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passText: UITextField!
    @IBOutlet weak var profileImageView: UIImageView!
    
    //Variables
    var avatarName = "profileDefault"
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func genBgColorButton(_ sender: UIButton) {
    }
    @IBAction func selectAvatarButton(_ sender: UIButton) {
    }
    
    @IBAction func createAccountButton(_ sender: UIButton) {
        
        guard let email = emailText.text , emailText.text != "" else { return}
        guard let name = usernameText.text , usernameText.text != "" else { return}
        guard let pass = passText.text , passText.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
                AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                    AuthService.instance.createUser(name: name,email: email, avatarName: self.avatarName, avatarColor: self.avatarColor,completion: {
                        (success) in
                        if success {
                            self.performSegue(withIdentifier: UNWINDSEGUE_TO_CHANNEL, sender: nil)
                        }
                    })
                })
            }
        }
        
    }
    @IBAction func closeButton(_ sender: Any) {
        performSegue(withIdentifier: UNWINDSEGUE_TO_CHANNEL, sender: nil)
    }
    
}
