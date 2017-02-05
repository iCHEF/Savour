//
//  SVLoginViewController.swift
//  Savour
//
//  Created by Memorysaver on 05/02/2017.
//  Copyright © 2017 iCHEF. All rights reserved.
//

import UIKit
import Lock
import SimpleKeychain

class SVLoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let loginViewController = A0Lock.shared().newLockViewController()
        loginViewController?.closable = false
        loginViewController?.onAuthenticationBlock = { profile, token in
            
            guard let profile = profile, let token = token else {
                return //it's a sign up
            }
            
            let keychain = A0SimpleKeychain(service: Constants.Auth0.keyChainIdentifier)
            keychain.setString(token.idToken, forKey: Constants.Auth0.idToken)
            
            if let refreshToken = token.refreshToken {
                keychain.setString(refreshToken, forKey: Constants.Auth0.refreshToken)
            }
            keychain.setData(NSKeyedArchiver.archivedData(withRootObject: profile), forKey: Constants.Auth0.profile)
            
            //dismiss login viewController
            loginViewController?.dismiss(animated: true, completion: nil)
            
            //display root view controller
            self.displayRootViewController()
        }
        self.addChildViewController(loginViewController!)
        self.view.addSubview(loginViewController!.view)
    }

}

extension SVLoginViewController {
    func displayRootViewController() {
        //display rootViewController
        let rootViewController = SVRootViewController()
        show(rootViewController, sender: nil)
    }
}
