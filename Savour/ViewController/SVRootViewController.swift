//
//  SVRootViewController.swift
//  Savour
//
//  Created by Memorysaver on 05/02/2017.
//  Copyright © 2017 iCHEF. All rights reserved.
//

import UIKit

class SVRootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
        
        let button = UIButton(type: .system)
        button.frame = (frame: CGRect(x: self.view.frame.size.width/2 - 100, y: self.view.frame.size.height-50, width: 200, height: 50))
        button.setTitleColor(UIColor.blue, for: .normal)
        button.setTitle("Logout", for: .normal)
        button.addTarget(self, action: #selector(testLogout), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    func testLogout() {
        let loginManager = SVLoginManager()
        loginManager.logout()
        show(SVLoginViewController(), sender: nil )
    }

}
