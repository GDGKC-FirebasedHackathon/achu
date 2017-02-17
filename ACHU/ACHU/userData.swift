//
//  userData.swift
//  ACHU
//
//  Created by Dongheon Ryu on 2017. 2. 15..
//  Copyright © 2017년 Dongheon Ryu. All rights reserved.
//

import Foundation

//회원 정보 class
var UserList : [userList] = []

class userData{
    
    
    //회원 추가 기능
    func addUser(_ id:String, _ pw:String ,_ name : String, _ mobile : String, _ age : String){
        let userData : [userList] = [userList(id: id, pw: pw, name: name, mobile: mobile, age: age)]
        UserList += userData
    }
    
    //회원 삭제 기능
    
    //회원 아이디로 찾기
    
    //회원 비밀번호 찾기
    
}

struct userList{
    
    var userId : String = ""
    var userPw : String = ""
    var userName : String = ""
    var userMobile : String = ""
    var userAge : String = ""
    
    init(id : String, pw : String, name : String, mobile : String, age : String) {
        self.userId = id
        self.userPw = pw
        self.userName = name
        self.userMobile = mobile
        self.userAge = age
    }
}
