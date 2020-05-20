//
//  ResultViewController.swift
//  FirstApp
//
//  Created by kimwongi on 2020/04/23.
//  Copyright © 2020 kimwongi. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController : UIViewController {
    
    class Student {
        
        //전달 받을 변수들
        var Mid: Int = 0
        var Final: Int = 0
        var Proj: Int = 0
        var Attend: Int = 0
        
        var Sum: Int = 0
        var Average: Double = 0
        var Grade: String = ""
        
        func SSum() -> String{
            Sum = Mid + Final + Proj + Attend
            return String(Sum)
        }
        
        func SAverage() -> String{
            Average = Double(Sum)/4
            return String(Average)
        }
        
        func SGrade() -> String{
            if (Average > 90) {
                Grade = "A"
                return Grade
            }
            
            if (Average < 90 && Average > 80) {
                Grade = "B"
                return Grade
            }
            
            if (Average < 80 && Average > 70) {
                Grade = "C"
                return Grade
            }
            
            if (Average < 70 && Average > 50) {
                Grade = "D"
                return Grade
            }
            else{
                Grade = "F"
                return Grade
            }
        }
    }
    //생성자
    let student = Student()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ResultSum.text = "총점은" + student.SSum()
        self.ResultAvg.text = "평균은 " + student.SAverage()
        self.ResultGrade.text = "당신의 학점은 " + student.SGrade()
    }

    @IBOutlet weak var ResultSum: UILabel!
    @IBOutlet weak var ResultAvg: UILabel!
    @IBOutlet weak var ResultGrade: UILabel!
    

    @IBAction func back(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        
        sender.setTitle("back", for: .normal)
    }
    
}
