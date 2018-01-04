//
//  roundedButton.swift
//  Smack
//
//  Created by Lokesh Soni on 04/01/18.
//  Copyright © 2018 nothing. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    
    @IBInspectable var corenerRadius: CGFloat = 5.0  {
        didSet {
            self.layer.cornerRadius = corenerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setUpView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setUpView()
    }
    
    func setUpView() {
        self.layer.cornerRadius = corenerRadius
    }
    
}
