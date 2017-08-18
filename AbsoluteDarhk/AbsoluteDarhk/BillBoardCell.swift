//
//  BillBoardCell.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 18/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class BillBoardCell: UITableViewCell {

    @IBOutlet weak var songImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBAction func plaAndpauseButton(_ sender: Any) {
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
