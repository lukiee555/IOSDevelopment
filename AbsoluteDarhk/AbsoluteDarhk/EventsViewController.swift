//
//  EventsViewController.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 04/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

 //private var events = Event.createEvents()

class EventsViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
   
      var events = Event.createEvents()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   

}


extension EventsViewController : UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return events.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Events Cell", for: indexPath) as! EventsCollectionViewCell
        
        cell.event = self.events[indexPath.item]
        
        return cell
    }
}
