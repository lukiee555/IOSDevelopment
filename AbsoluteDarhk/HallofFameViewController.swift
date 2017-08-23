//
//  HallofFameViewController.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 22/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class HallofFameViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
    

{
    

    @IBAction func backButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var tableView: UITableView!
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
               
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HallCell", for: indexPath) as? HallCell
        
        return cell!
    }

}
