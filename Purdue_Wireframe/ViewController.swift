//
//  ViewController.swift
//  Purdue_Wireframe
//
//  Created by Dan Morton on 9/7/17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Map View Styling
        mapView.layer.cornerRadius = 5.0
        
        let location = CLLocation(latitude: 40.427728, longitude: -86.916975)
        let center = location.coordinate
        let span = MKCoordinateSpanMake(0.001, 0.001)
        let region = MKCoordinateRegionMake(center, span)
        
        mapView.setRegion(region, animated: true)
        
        let anno = MKPointAnnotation()
        anno.coordinate = location.coordinate
        
        mapView.addAnnotation(anno)
        
    }

}

