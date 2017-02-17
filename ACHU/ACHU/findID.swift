//
//  findID.swift
//  ACHU
//
//  Created by Dongheon Ryu on 2017. 2. 11..
//  Copyright © 2017년 Dongheon Ryu. All rights reserved.
//

import Foundation
import UIKit
class findID : UIViewController{
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var nameTextField : UITextField!
    @IBOutlet weak var mobileTextField : UITextField!
    @IBOutlet weak var resultLabel : UILabel!
    
    override func viewDidLoad() {
    
        
    }
    override func didReceiveMemoryWarning() {
        
    }
    
    @IBAction func findButtonAction(_ sender:AnyObject){
        var name = nameTextField.text!
        var mobile = mobileTextField.text!
        
        //제대로 실행 되는지 확인하려고 넣은 코드. 확인 후 제거

        
        // 이 부분 실행 안됨. 왠지 이유는 못찾겠지만 실행되지 않음.
        if(UserList.count==0){
            resultLabel.text = "현재 회원이 존재하지 않습니다."
        }else{
            for UserTemp in UserList{
                if(name==UserTemp.userName && mobile==UserTemp.userMobile){
                    resultLabel.text="당신의 아이디는 \(UserTemp.userId)입니다."
                    print("findButtonAction is operating")
                    
                    return;
                }
                resultLabel.text = "아이디나 번호를 잘못 입력하셨습니다."
            }
        }
        

        //유저가 존재 하지 않을때를 처리를 못하겠다.
        // 클래스를 어떻게 만들고 사용하는지를 다시 알아야 할것 같다.
    }
}
