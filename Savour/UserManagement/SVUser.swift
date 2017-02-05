//
//  SVUser.swift
//  Savour
//
//  Created by Memorysaver on 05/02/2017.
//  Copyright © 2017 iCHEF. All rights reserved.
//

import Foundation

struct SVUser {
    let token: String, uid: String, name: String, picture: URL
    
    init(idToken token: String, userID uid: String, userName name: String, pictureURL picture: URL) {
        self.token = token
        self.uid = uid
        self.name = name
        self.picture = picture
    }
}
