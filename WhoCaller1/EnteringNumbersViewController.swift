//
//  EnteringNumbersViewController.swift
//  WhoCaller1
//
//  Created by mohamed on 1/31/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit
import CoreLocation
class EnteringNumbersViewController: UIViewController , CLLocationManagerDelegate{
    let locationManager = CLLocationManager()
    let geoCoder = CLGeocoder()

    @IBOutlet weak var CountryTextField: UITextField!
    @IBOutlet weak var NumberTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        CountryTextField.underlined()
        NumberTextField.underlined()
        locationManager.requestAlwaysAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.startMonitoringSignificantLocationChanges()
        }
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let currentLocation = locations.first else { return }
        
        geoCoder.reverseGeocodeLocation(currentLocation) { (placemarks, error) in
            guard let currentLocPlacemark = placemarks?.first else { return }
            print(currentLocPlacemark.country ?? "No country found")
            print(currentLocPlacemark.isoCountryCode ?? "No country code found")
            self.CountryTextField.text = currentLocPlacemark.country
        }
    }
    
}
extension UITextField {
    
        func underlined(){
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.white.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
