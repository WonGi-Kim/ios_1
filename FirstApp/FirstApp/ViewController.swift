//
//  ViewController.swift
//  FirstApp
//
//  Created by kimwongi on 2020/04/22.
//  Copyright © 2020 kimwongi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func movePresent(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(identifier:  "SecondVC") else {
            return
        }
        
        uvc.modalTransitionStyle =  UIModalTransitionStyle.coverVertical
        
        self.present(uvc, animated: true, completion: nil)
    }
}

