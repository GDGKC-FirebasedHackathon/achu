//
//  ViewController.swift
//  ACHU
//
//  Created by Dongheon Ryu on 2017. 2. 11..
//  Copyright © 2017년 Dongheon Ryu. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController , GIDSignInUIDelegate{

    @IBOutlet weak var userId: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var findIdButton: UIButton!
    @IBOutlet weak var findPwButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    var ref: FIRDatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storage = FIRStorage.storage()
        //let storageRef = storage.reference(forURL: "gs://achu-8b05f.appspot.com/")
        
        //let imageRef = storageRef.child("image")
        
        self.ref = FIRDatabase.database().reference()
        
        
        GIDSignIn.sharedInstance().uiDelegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func LogIn(_ sender: Any) {
        //데이터베이스 체크하고 id랑 pw 가져와서 있으면 다음 화면
        
        
        //아이디나 패스워드가 틀렸을 경우에는 알람창이 뜸
        
    }

    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//        //세그먼트 전달시 LoginButton 이 눌렸을때 값을 전달한다.
//        if(LoginButton.isTouchInside==true){
//            //let DestViewController : MainView = segue.destination as! MainView
//            
//            //DestViewController.userID = userId.text
//            
//        }
//        //그 외의 경우
//        else{
//            //아무것도 하지 않는다
//        }
//    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        userId.resignFirstResponder()
        userPassword.resignFirstResponder()
    }
    
    


}

