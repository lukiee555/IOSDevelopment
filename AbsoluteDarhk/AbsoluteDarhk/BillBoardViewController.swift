//
//  BillBoardViewController.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 18/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class BillBoardViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate {

   
    @IBOutlet weak var tableView: UITableView!
    
    var songArray = [AnyObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request("").responseJSON { response in
            
            let result = response.result
            
            if let dict = result.value as? Dictionary<String,AnyObject>{
                if let innerdict = dict["songs"]{
                    self.songArray = innerdict as? [AnyObject]
                    self.tableView.reloadData()
                }
                
            }
        
        
        }
        
        func tableView(tableView: UITableView, numberOfRowsInSection: Int) ->Int{
            return songArray.count
        }
        
        func tableView(tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BillBoardCell", for: indexPath) as?BillBoardCell
            
            let title = songArray[indexPath.row]["title"]
            
            cell?.titleLabel.text = title as? String!
            
            return cell!
        }
    }
    
  

   
    

  

}
