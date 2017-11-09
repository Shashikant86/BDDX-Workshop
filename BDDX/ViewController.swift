//
//  ViewController.swift
//  BDDX
//
//  Created by Shashikant Jagtap on 09/11/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeTest: UILabel!
    
    
    @IBAction func enterPressed(_ sender: Any) {
        
        welcomeTest.text = "Welcome to BDDX"
        
        
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

