//
//  UserDataService.swift
//  Smack
//
//  Created by Lokesh Soni on 05/01/18.
//  Copyright © 2018 nothing. All rights reserved.
//

import Foundation

class UserDataService {
    
    static let instance = UserDataService()
    
    public private(set) var id = ""
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    func setUserData(id: String, avatarColor: String, avatarName: String, email: String , name: String) {
        self.id = id
        self.avatarName = avatarName
        self.email = avatarName
        self.avatarColor = avatarName
        self.name = name
    }
    func setAvatarName(avatarName: String) {
        self.avatarName = avatarName
    }

    
    
    
}
