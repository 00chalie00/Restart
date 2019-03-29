//
//  UserData.swift
//  ReStart
//
//  Created by formathead on 29/03/2019.
//  Copyright © 2019 formathead. All rights reserved.
//

import Foundation
class UserData {
    
    static let instance = UserData()
    
    public private(set) var id = ""
    public private(set) var name = ""
    public private(set) var email = ""
    public private(set) var avatarName = ""
    public private(set) var avatarColor = ""
    
    
    func SetUserData(id: String, name: String, email: String, avatarName: String, avatarColor: String) {
        
        self.id = id
        self.name = name
        self.email = email
        self.avatarName = avatarName
        self.avatarColor = avatarColor
        
    }
    
    
    
    
    
    
    
}//End Of The Class


