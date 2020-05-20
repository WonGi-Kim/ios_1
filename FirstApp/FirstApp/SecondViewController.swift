//
//  SecondViewController.swift
//  FirstApp
//
//  Created by kimwongi on 2020/04/22.
//  Copyright © 2020 kimwongi. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController : UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //textfield 글자 수 제한과 키보드 내리기를 위한 delegate 선언
        MidScore.delegate = self
        FinalScore.delegate = self
        ProjScore.delegate = self
        AttendScore.delegate = self
        
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
      let maxNumber = 3
      let currentString: NSString = textField.text! as NSString
      let newString: NSString =
        currentString.replacingCharacters(in: range, with: string) as NSString
        //글자 수 복붙 제한, 100이하의 숫자 입력
        return newString.length <= maxNumber && newString.integerValue <= 100
        
    }
    
     override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
          self.view.endEditing(true)
    }

    
    @IBOutlet weak var MidScore: UITextField!
    @IBOutlet weak var FinalScore: UITextField!
    @IBOutlet weak var ProjScore: UITextField!
    @IBOutlet weak var AttendScore: UITextField!
    
    
    
    @IBAction func MidScore(_ sender: UITextField) {
        
    }
    
    @IBAction func Summit(_ sender: UIButton) {
       guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "ResultVC") as? ResultViewController else {            return
        }
        
        //전달 할 변수들
        rvc.student.Mid = Int(MidScore.text!) ?? 0
        
        rvc.student.Final = Int(FinalScore.text!) ?? 0
        
        rvc.student.Proj = Int(ProjScore.text!) ?? 0
        
        rvc.student.Attend = Int(AttendScore.text!) ?? 0
        
       
        
        self.present(rvc, animated: true, completion: nil)
        
    }
    
    @IBAction func back(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
