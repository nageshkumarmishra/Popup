//
//  ViewController.swift
//  PopupAlert
//
//  Created by Nagesh on 18/07/18.
//  Copyright © 2018 Nagesh Kumar Mishra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonActions(_ sender: UIButton) {
        
        if sender.tag == 0 {
            
            self.popupAlert(title: "title", message: "description", alertType: .alert, actionTitles:["Ok"], actions:[{ok in
                
                }, nil])
        } else {
            
            self.popupAlert(title: "title", message: "description", alertType: .actionSheet, actionTitles: ["Settings","Cancel"], actions:[{settingsAction in
                
                
                },{cancelAction in
                    
                }, nil])
        }
    }
}

