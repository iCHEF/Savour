//
//  SVLoginManager.swift
//  Savour
//
//  Created by Memorysaver on 05/02/2017.
//  Copyright © 2017 iCHEF. All rights reserved.
//

import UIKit
import Lock
import SimpleKeychain

class SVLoginManager {
    var logginedUser: SVUser? {
        let keychain = A0SimpleKeychain(service: Constants.Auth0.keyChainIdentifier)
        let idToken = keychain.string(forKey: Constants.Auth0.idToken)
        
        //This app support offline mode.
        //Once we have the token, we consider it's valid until API call failed.
        if let idToken = idToken {
            let profileData = keychain.data(forKey: Constants.Auth0.profile)
            guard let profile = NSKeyedUnarchiver.unarchiveObject(with: profileData!) as? A0UserProfile else {
                return nil
            }
            return SVUser(idToken: idToken, userID: profile.userId, userName: profile.name, pictureURL: profile.picture)
        }
        return nil
    }
    
    var loggined: Bool {
        if self.logginedUser != nil {
            return true
        }
        return false
    }
    
    //refresh token passively if API call fails.
    
    func logout() {
        let keychain = A0SimpleKeychain(service: Constants.Auth0.keyChainIdentifier)
        keychain.clearAll()
    }
}
