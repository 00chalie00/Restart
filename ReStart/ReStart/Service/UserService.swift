//
//  UserService.swift
//  ReStart
//
//  Created by formathead on 21/03/2019.
//  Copyright © 2019 formathead. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class UserService {
    
    static let instance = UserService()
    
    //User Default Set
    let defaults = UserDefaults.standard
    
    var userEmail: String {
        get {
            return defaults.value(forKey: USER_EMAIL) as! String
        }
        
        set {
            defaults.set(newValue, forKey: USER_EMAIL)
        }
    }
    
    var token: String {
        get {
            return defaults.value(forKey: USER_TOKEN) as! String
        }
        
        set {
            defaults.set(newValue, forKey: USER_TOKEN)
        }
    }
    
    //User Register
    func AuthRegister(email: String, password: String, completion: @escaping completionhandler) {
        let lowcaseEmail = email.lowercased()
        
        let header = ["Content-Type": "application/json; charset = utf-8" ]
        let body: [String: Any] = ["email": lowcaseEmail, "pasword": password]
        
        Alamofire.request(AUTH_REGISTER_URL, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseString {
            (response) in
            
            if response.result.error == nil {
                completion(true)
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
        
    }
    
    //User Login
    func AuthLogin(email: String, password: String, completion: @escaping completionhandler) {
        let lowcaseEmail = email.lowercased()
        
        let header = ["Content-Type": "application/json; charset = utf-8"]
        let body: [String: Any] = ["email": lowcaseEmail, "password": password]
        
        Alamofire.request(AUTH_Login_URL, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseJSON {
            (response) in
            
            if response.result.error == nil{
                completion(true)
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
    
    //Add User
    func AuthAdd(name: String, email: String, avatarName: String, avatarColor: String, completion: @escaping completionhandler) {
        
        let lowcaseEmail = email.lowercased()
        let header = ["Authorization": "Brarer \(UserService.instance.token)",
                      "Content-Type": "application/json; charset = utf-8"]
        let body: [String: Any] = ["name": name,
                                   "email": lowcaseEmail,
                                   "avatarName": avatarName,
                                   "avatarColor": avatarColor]
        
        Alamofire.request(AUTH_Add_URL, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseJSON{
            (response) in
            
            if response.result.error == nil {
                guard let data = response.data else {return}
                
                do {
                    let jsonData = try JSON(data: data)
                    let name = jsonData["name"].stringValue
                    let email = jsonData["email"].stringValue
                    let avatarName = jsonData["avatarName"].stringValue
                    let avatarColor = jsonData["avatarColor"].stringValue
                    let avatarID = jsonData["id"].stringValue
                    
                    UserData.instance.SetUserData(id: avatarID, name: name, email: email, avatarName: avatarName, avatarColor: avatarColor)
                    
                }
                catch {
                    print(error)
                }
                completion(true)
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
     
    
}// End Of The Class
