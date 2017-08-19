//
//  SIgnupViewController.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 14/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class SIgnupViewController: UIViewController {
    
   
    var iconPass = Bool()
    var iconConfirm = Bool()
 
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func CreateAccountButton(_ sender: Any) {
    }
    @IBOutlet weak var createAccountButton: UIButton!
    @IBOutlet weak var femaleButton: UIButton!
    @IBOutlet weak var malebutton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var mobileTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var passwordIcon: UIButton!
    
    @IBOutlet weak var confirmIco: UIButton!
    
    @IBAction func passButton(_ sender: Any) {
        
        if(iconPass == true) {
            passwordTextField.isSecureTextEntry = false
            passwordIcon.setBackgroundImage(#imageLiteral(resourceName: "ic_eye_open"), for: UIControlState.normal)
            
            iconPass = false
        } else {
            passwordTextField.isSecureTextEntry = true
            passwordIcon.setBackgroundImage(#imageLiteral(resourceName: "ic_eye_closed"), for: UIControlState.normal)
            iconPass = true
        }
        
        
    }
    @IBAction func confirmButton(_ sender: Any) {
        
        if(iconConfirm == true) {
            confirmTextField.isSecureTextEntry = false
            confirmIco.setBackgroundImage(#imageLiteral(resourceName: "ic_eye_open"), for: UIControlState.normal)
            
            iconConfirm = false
        } else {
            confirmTextField.isSecureTextEntry = true
            confirmIco.setBackgroundImage(#imageLiteral(resourceName: "ic_eye_closed"), for: UIControlState.normal)
            iconConfirm = true
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.setBottomBorder()
        passwordTextField.setBottomBorder()
        confirmTextField.setBottomBorder()
        mobileTextField.setBottomBorder()
        nameTextField.setBottomBorder()
    
        iconPass = true
        iconConfirm = true
        
        passwordTextField.isSecureTextEntry = true
        confirmTextField.isSecureTextEntry = true
        passwordIcon.setBackgroundImage(#imageLiteral(resourceName: "ic_eye_closed"), for: UIControlState.normal)
        confirmIco.setBackgroundImage(#imageLiteral(resourceName: "ic_eye_closed"), for: UIControlState.normal)
        
        malebutton.layer.borderWidth = 1.0;
        malebutton.layer.borderColor = UIColor.init(red: 225.0, green: 56.0, blue: 79.0, alpha: 1).cgColor
        
        femaleButton.layer.borderWidth = 1.0;
        femaleButton.layer.borderColor = UIColor.init(red: 225.0, green: 56.0, blue: 79.0, alpha: 1).cgColor
        createAccountButton.layer.borderWidth = 1.0;
        createAccountButton.layer.borderColor = UIColor.init(red: 225.0, green: 56.0, blue: 79.0, alpha: 1).cgColor
        
    
    
    
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
