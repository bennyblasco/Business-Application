//
//  ContactUsViewController.swift
//  Business Application
//
//  Created by Benjamin Inemugha on 05/09/2020.
//  Copyright © 2020 Techeloper. All rights reserved.
//

import UIKit
import MapKit

class ContactUsViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var directionBtn: UIButton!
    @IBOutlet weak var callUsBtn: UIButton!
    @IBOutlet weak var emailUsBtn: UIButton!
    @IBOutlet weak var socialLinksBtn: UIButton!
    
    var latitude = 9.0643305
    var longitude = 7.4892974
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        directionBtn.layer.cornerRadius = 10
        callUsBtn.layer.cornerRadius = 10
        emailUsBtn.layer.cornerRadius = 10
        socialLinksBtn.layer.cornerRadius = 10
        
        
        
        let span = MKCoordinateSpan(latitudeDelta: 0.0005, longitudeDelta: 0.0005)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: span)
        mapView.setRegion(region, animated: true)
        
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let pinAnn = MKPointAnnotation()
        
        pinAnn.coordinate = pinLocation
        pinAnn.title = "My Company"
        pinAnn.subtitle = "Galadimawa, Abuja, Nigeria"
        self.mapView.addAnnotation(pinAnn)
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    @IBAction func directionsBtnWasPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://maps.apple.com/maps?daddr=\(latitude),\(longitude)")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func callUsBtnWasPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "tel://+2347031610046")!, options: [:], completionHandler: nil)
    }
    @IBAction func emailUsBtnWasPressed(_ sender: Any) {
        
    }
    @IBAction func socialLinksBtnWasPressed(_ sender: Any) {
    }
}
