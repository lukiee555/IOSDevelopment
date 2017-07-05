//
//  ViewController.swift
//  MenuBar
//
//  Created by Lokesh Soni on 02/07/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        var timer = Timer()
        var showingtime = 210
    
    func decreaseTimer(){
        if showingtime > 0 {
            showingtime-=1
            labelTime.text = String(showingtime)
        }
        else{
            timer.invalidate()
        }
    }
   
    
    @IBOutlet weak var labelTime: UILabel!
    
    @IBAction func buttonSubTen(_ sender: Any) {
       
        if showingtime > 10 {
        showingtime -= 10
        labelTime.text = String(showingtime)
        }
        else {
            showingtime = 0
             labelTime.text = String(showingtime)
        }
      
    }
    
    @IBAction func buttonAddTen(_ sender: Any) {
        showingtime+=10
        labelTime.text = String(showingtime)
    }
    @IBAction func buttonReset(_ sender: Any) {
        showingtime = 210
        labelTime.text = String(showingtime)
        
    }
    @IBAction func buttonStop(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func buttonStart(_ sender: Any) {
          timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
   
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

