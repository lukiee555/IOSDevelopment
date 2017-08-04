//
//  EventsCollectionViewCell.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 04/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class EventsCollectionViewCell: UICollectionViewCell {
    
    //MARK: -  public API 
    var event :Event!{
        didSet{
            updateUI()
        }
    }
    
    //MARK: - private
    
    @IBOutlet weak var featuredimage: UIImageView!
    @IBOutlet weak var eventTitlelabel:UILabel!
    @IBOutlet weak var eventDecriptionlabel:UILabel!
    
    private func updateUI(){
        
        eventTitlelabel?.text! = event.title
        featuredimage.image = event.featuredImage
        eventDecriptionlabel?.text! = event.decription
        
        
    }
    
}
