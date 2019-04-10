//
//  MapVC.swift
//  pixel-city
//
//  Created by Mahmoud Elshakoushy on 4/10/19.
//  Copyright © 2019 Mahmoud Elshakoushy. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    //Outlets
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }

    @IBAction func centerMapBtnPressed(_ sender: Any) {
        
    }
    
}

extension MapVC: MKMapViewDelegate {
    
}

