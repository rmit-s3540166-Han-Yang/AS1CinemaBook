//
//  MapViewController.swift
//  CinemaBook
//
//  Created by Forest on 7/10/17.
//  Copyright © 2017 Han. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: UIViewController {
    let titles = ["Movies","Bookings","Contact"]
    var myIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        mapView.isMyLocationEnabled = true
        self.view = mapView
    }

    
}
