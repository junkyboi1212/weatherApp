//
//  ViewController.swift
//  WeatherApp
//
//  Created by Deepak Gaire  on 5/17/16.
//  Copyright © 2016 Deepak Gaire. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


// we need to pass the cllocationManagerDelegate protocols......

class ViewController: UIViewController,CLLocationManagerDelegate{
    
    
    
    @IBOutlet weak var lonLbl: UILabel!
    @IBOutlet weak var latLbl: UILabel!

    @IBOutlet weak var placeNameLbl : UILabel!
    
    @IBOutlet weak var weatherDescLbl : UILabel!
    @IBOutlet weak var timeLbl : UILabel!
    @IBOutlet weak var temperatureLbl : UILabel!
    
    @IBOutlet weak var weatherImg : UIImageView!
    
    @IBOutlet weak var humidityLbl : UILabel!
    @IBOutlet weak var cloudslbl : UILabel!
    @IBOutlet weak var pressureLbl : UILabel!
    @IBOutlet weak var windSpeedLbl : UILabel!
    @IBOutlet weak var lowTempLbl : UILabel!
    @IBOutlet weak var highTempLbl : UILabel!
    
    
    
    
    let locationManager = CLLocationManager()

    
    var weather = [Weather]()
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ask for the authorization by the user ....
        
        self.locationManager.requestAlwaysAuthorization()
        
        // for use in foreground ....
        
        self.locationManager.requestWhenInUseAuthorization()
        
        // if the user enabled the location services ...
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyThreeKilometers
            locationManager.startUpdatingLocation()
        }
        
        
        
           }

    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        
        let localVal : CLLocationCoordinate2D = (manager.location?.coordinate)!
     
        
        lonLbl.text = "\(localVal.longitude)"
        latLbl.text = "\(localVal.latitude)"
    }
    
    
    
}

