//
//  GalleryCollectionViewController.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 17/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit


class GalleryCollectionViewController: UICollectionViewController {
    @IBAction func backButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }

   var photoCategories = PhotoCategory.fetchPhotos()
    struct Storyboard{
        static let photoCell = "PhotoCell"
        static let showDetailsSegue = "ShowDetails"
        static let leftAndrightPadding: CGFloat = 2.0
        static let numberOfItemPerRow: CGFloat = 2.0
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
    let collectionViewWidth = collectionView?.frame.width
    let itemWidth = (collectionViewWidth! - Storyboard.leftAndrightPadding) / Storyboard.numberOfItemPerRow
    
    let layout = collectionViewLayout as! UICollectionViewFlowLayout
    layout.itemSize = CGSize(width: itemWidth, height: itemWidth)
    }
   // Mark: - CollectionViewDataSource
    

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return photoCategories.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoCategories[section].imageNames.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Storyboard.photoCell, for: indexPath) as! PhotoViewCell
        let photoCategory = photoCategories[indexPath.section]
        let imageNames = photoCategory.imageNames
        let imageName = imageNames[indexPath.item]

        
        cell.imageName = imageName
    
        
        return cell
    }
    
    
    // MARK: - UICollectionViewDelegate
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        let category = self.photoCategories[indexPath.section]
        let image = UIImage(named: category.imageNames[indexPath.item])
        
        self.performSegue(withIdentifier: Storyboard.showDetailsSegue, sender: image)
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == Storyboard.showDetailsSegue {
            let detailVC = segue.destination as! DetailsViewController
            detailVC.image = sender as! UIImage
        }
    }

   
  
}
