//
//  BillBoardViewController.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 18/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class BillBoardViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate {

   
    @IBAction func backButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) ->Int{
            return 20        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BillBoardCell", for: indexPath) as?BillBoardCell
            
            
            return cell!
        }
    }
    
  

   
    

  


