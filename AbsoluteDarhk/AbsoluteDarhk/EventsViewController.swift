//
//  EventsViewController.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 23/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBAction func bacButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

}
extension EventsViewController: UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventsCell", for: indexPath) as UICollectionViewCell
        
        
        let backButton = cell.viewWithTag(1) as! UIButton
        
        backButton.isHidden = true
        
        
        return cell
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let cell = collectionView.cellForItem(at: indexPath)
        
        cell?.superview?.bringSubview(toFront: cell!)
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [], animations: ({
            cell?.frame = collectionView.bounds
            collectionView.isScrollEnabled = false
            
            let backButton = cell?.viewWithTag(1) as! UIButton
            
            backButton.isHidden = false
            backButton.addTarget(self, action: #selector(self.backButtonAction
                ), for: UIControlEvents.touchUpInside)
            
        }), completion: nil)
        
        
    }
    
    func backButtonAction(){
        let indexPath = collectionView?.indexPathsForSelectedItems!
        
        collectionView?.isScrollEnabled = true
        collectionView?.reloadItems(at: indexPath!)
        
    }
}
