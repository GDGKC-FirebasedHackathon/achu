//
//  SignUp.swift
//  ACHU
//
//  Created by Dongheon Ryu on 2017. 2. 15..
//  Copyright © 2017년 Dongheon Ryu. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class SignUp : UIViewController{
    
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mobileTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        
    }
    @IBAction func signUpAction(_ sender: Any) {
        var id = idTextField.text!
        var pw = pwTextField.text!
        var name = nameTextField.text!
        var mobile = mobileTextField.text!
        var age = ageTextField.text!
        
        var UserData = userData()
        
        for userTemp in UserList{
            if(userTemp.userId == id){
                let alert = UIAlertController(title:"계정 생성 오류",message: "동일한 아이디가 존재합니다.", preferredStyle: .alert)
                let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(alertAction)
                present(alert, animated: true, completion: nil)
            }
            
        }
        UserData.addUser(id, pw, name, mobile, age)
        
        print(UserList)
        let alert = UIAlertController(title:"계정 생성",message: "계정이 생성되었습니다.", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
    }
    
    
}
