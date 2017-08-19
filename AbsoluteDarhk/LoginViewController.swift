//
//  LoginViewController.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 14/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var iconClick = Bool()

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var showiCon: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func showButton(_ sender: Any) {
        
        if(iconClick == true) {
            passwordTextField.isSecureTextEntry = false
            showiCon.setBackgroundImage(#imageLiteral(resourceName: "ic_eye_open"), for: UIControlState.normal)
                        iconClick = false
        } else {
            passwordTextField.isSecureTextEntry = true
            showiCon.setBackgroundImage(#imageLiteral(resourceName: "ic_eye_closed"), for: UIControlState.normal)
            iconClick = true
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        iconClick = true
        emailTextField.setBottomBorder()
        passwordTextField.setBottomBorder()
        passwordTextField.isSecureTextEntry = true
        showiCon.setBackgroundImage(#imageLiteral(resourceName: "ic_eye_closed"), for: UIControlState.normal)
       
        
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
   
    
   
}
extension UITextField {
    func setBottomBorder() {
        self.borderStyle = .none
        self.backgroundColor = UIColor.black
        self.textColor = UIColor.white
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
    
    
}
