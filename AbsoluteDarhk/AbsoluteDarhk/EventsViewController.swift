//
//  EventsViewController.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 04/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    private var events = Events.createEvents()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   



}
