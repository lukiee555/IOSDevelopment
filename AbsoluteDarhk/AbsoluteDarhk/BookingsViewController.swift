//
//  BookingsViewController.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 23/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class BookingsViewController: UIViewController {

    @IBAction func backButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }

    
    @IBOutlet weak var emailBookingTextFeld: UITextField!
    
    @IBOutlet weak var fullnameBookingTextFeld: UITextField!
    
    @IBOutlet weak var mobileNumberBookingTextFeld: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                emailBookingTextFeld.setBottomBorder()
                fullnameBookingTextFeld.setBottomBorder()
                mobileNumberBookingTextFeld.setBottomBorder()
        
        
            }


}
