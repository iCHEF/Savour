//
//  SVRootViewController.swift
//  Savour
//
//  Created by Memorysaver on 05/02/2017.
//  Copyright © 2017 iCHEF. All rights reserved.
//

import UIKit
import FontAwesome_swift

class SVRootViewController: UITabBarController {
    
    //MARK: - Properties
    private lazy var explorerVC: SVExplorerViewController = {
        let vc = SVExplorerViewController()
        let image = UIImage.fontAwesomeIcon(name: .mapMarker, textColor: UIColor.blue, size: CGSize(width: Constants.IconSize.tabIconSize, height: Constants.IconSize.tabIconSize))
        vc.tabBarItem = UITabBarItem(title: "Explore", image: image, tag: 0)
        return vc
    }()
    
    private lazy var scannerVC: SVScannerViewController = {
        let vc = SVScannerViewController()
        let image = UIImage.fontAwesomeIcon(name: .qrcode, textColor: UIColor.blue, size: CGSize(width: Constants.IconSize.tabIconSize, height: Constants.IconSize.tabIconSize))
        vc.tabBarItem = UITabBarItem(title: "Scan", image: image, tag: 1)
        return vc
    }()

    private lazy var userVC: SVUserViewController = {
        let vc = SVUserViewController()
        let image = UIImage.fontAwesomeIcon(name: .userSecret, textColor: UIColor.blue, size: CGSize(width: Constants.IconSize.tabIconSize, height: Constants.IconSize.tabIconSize))
        vc.tabBarItem = UITabBarItem(title: "Account", image: image, tag: 2)
        return vc
    }()

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.delegate = self
        
        //arrange rootViewControllers
        self.viewControllers = [self.explorerVC, self.scannerVC, self.userVC]
    }
    
}

private typealias PrivateMethods = SVRootViewController
extension PrivateMethods {
    
}

private typealias TabBarControllerDelegateMethods = SVRootViewController
extension TabBarControllerDelegateMethods: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        
    }
}
