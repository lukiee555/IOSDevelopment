//
//  PhotoViewCell.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 17/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class PhotoViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photoImageView: UIImageView?
    
    var imageName: String! {
        didSet {
            photoImageView?.image = UIImage(named: imageName)
        }
    }
    
}
