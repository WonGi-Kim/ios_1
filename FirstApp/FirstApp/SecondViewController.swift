//
//  SecondViewController.swift
//  FirstApp
//
//  Created by kimwongi on 2020/04/22.
//  Copyright © 2020 kimwongi. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController : UIViewController {
    
    
    @IBOutlet weak var MidScore: UITextField!
    @IBOutlet weak var FinalScore: UITextField!
    @IBOutlet weak var ProjScore: UITextField!
    @IBOutlet weak var AttendScore: UITextField!
    
    
    @IBAction func MidScore(_ sender: Any) {
    }
    @IBAction func FinalScore(_ sender: Any) {
    }
    @IBAction func ProjScore(_ sender: Any) {
    }
    @IBAction func AttendScore(_ sender: Any) {
    }
    
    
    var mid: Int = 0
    var final: Int = 0
    var proj: Int = 0
    var attend: Int = 0
    
    
    @IBAction func Summit(_ sender: UIButton) {
       guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "ResultVC") as? ResultViewControll else {
            return
        }
        
        //전달 할 변수들
        rvc.student.Mid = (MidScore.text! as NSString).integerValue
        
        rvc.student.Final = (FinalScore.text! as NSString).integerValue
        
        rvc.student.Proj = (ProjScore.text! as NSString).integerValue
        
        rvc.student.Attend = (AttendScore.text! as NSString).integerValue
        
       
        
        self.present(rvc, animated: true, completion: nil)
        
    }
    
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
