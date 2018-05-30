//
//  ViewController.swift
//  notification
//
//  Created by agile on 4/19/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

struct mystruct {
   static var str:String = "first viewcontroller"
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.str2(_:)), name: NSNotification.Name(rawValue: mystruct.str), object: nil)
    }
    @objc func str2(_ notification : NSNotification) {
        print(notification.name)
        print(notification.object)
    }
    
       @IBAction func btnAddObserver(_ sender: UIButton) {
//        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "firstnotification"), object: nil)
        let objstory = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(objstory, animated: true)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: mystruct.str), object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
       //  NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: mystruct.str), object: nil)
    }
}

