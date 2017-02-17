//
//  MainView.swift
//  ACHU
//
//  Created by Dongheon Ryu on 2017. 2. 11..
//  Copyright © 2017년 Dongheon Ryu. All rights reserved.
//

import Foundation
import UIKit

class MainView: UIViewController{
    
    //아이디 표시하는 레이블 지정
    @IBOutlet weak var label: UILabel!
    
    //유저 아이디를 스트링 형식으로 지정
    var userID : String!
    
    
    
    override func viewDidLoad() {
        //받아온 텍스트를 이 레이블에서 지정
        label.text = userID
        
        
    }
    override func didReceiveMemoryWarning() {
    }
}

