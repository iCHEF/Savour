//
//  SVUserViewController.swift
//  Savour
//
//  Created by Memorysaver on 05/02/2017.
//  Copyright © 2017 iCHEF. All rights reserved.
//

import UIKit

class SVUserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Account"
        
        let button = UIButton(type: .system)
        button.frame = (frame: CGRect(x: self.view.frame.size.width/2 - 100, y: self.view.frame.size.height-300, width: 200, height: 50))
        button.setTitleColor(UIColor.blue, for: .normal)
        button.setTitle("Logout", for: .normal)
        button.addTarget(self, action: #selector(testLogout), for: .touchUpInside)
        self.view.addSubview(button)
    }

}

private typealias PrivateMethods = SVUserViewController
extension PrivateMethods {
    func testLogout() {
        let loginManager = SVLoginManager()
        loginManager.logout()
        show(SVLoginViewController(), sender: nil )
    }
}
