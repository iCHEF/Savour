//
//  SVExplorerViewController.swift
//  Savour
//
//  Created by Memorysaver on 05/02/2017.
//  Copyright © 2017 iCHEF. All rights reserved.
//

import UIKit
import MapKit

class SVExplorerViewController: UIViewController {
    
    private lazy var mapView: MKMapView = {
        return MKMapView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Explore"
        self.mapView.frame = self.view.frame
        self.view.addSubview(self.mapView)
        
        self.setupConstraints()
        
        //current idea is to practice call restaurant api -> alamorefire -> moya -> display on map
    }

}

private typealias PrivateMethods = SVExplorerViewController
extension PrivateMethods {
    func setupConstraints() {
        //find a autolayout library
    }
}
