//
//  ThirdViewController.swift
//  notification
//
//  Created by agile on 4/19/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnpost(_ sender: UIButton) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: mystruct.str), object: "savan")
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "Secondnotification"), object: "123456")
    }
    
   

}
