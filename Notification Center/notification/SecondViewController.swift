//
//  SecondViewController.swift
//  notification
//
//  Created by agile on 4/19/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func btnAddObsserver(_ sender: UIButton) {
        NotificationCenter.default.addObserver(self, selector: #selector(SecondViewController.str(_:)), name: NSNotification.Name(rawValue: "Secondnotification"), object: nil)
        let objstory = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        navigationController?.pushViewController(objstory, animated: true)
    }
    
    @objc func str(_ notification : NSNotification) {
        print(notification.name)
        print(notification.object)
    }
   
}
