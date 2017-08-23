//
//  HallCell.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 22/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class HallCell: UITableViewCell {

    @IBOutlet weak var persononeImageView: UIImageView!
    @IBOutlet weak var persontwoImageView: UIImageView!
    
    @IBOutlet weak var mainView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        
        persononeImageView.layer.masksToBounds = false
        persononeImageView.layer.cornerRadius = persononeImageView.frame.size.width/2
        persononeImageView.clipsToBounds = true
        
        persontwoImageView.layer.masksToBounds = false
        persontwoImageView.layer.cornerRadius = persononeImageView.frame.size.width/2
        persontwoImageView.clipsToBounds = true
        
        mainView.layer.cornerRadius = 10
        
       

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    
    }

}
