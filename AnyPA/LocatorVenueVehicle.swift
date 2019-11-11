//
//  LocatorVenueVehicle.swift
//  AnyPA
//
//  Created by Guy Vales on 2019-10-20.
//  Copyright © 2019 Guy Vales. All rights reserved.
//

import Foundation
import Combine
import CoreLocation
import SwiftUI

class StationProximityDetector: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var shortestDistance: Int = 1
    var locationManager: CLLocationManager?
    @Published var distanceFromStation: Int = 4

    
    
    override init() {
    
        
        super.init()
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        locationManager?.requestWhenInUseAuthorization()
        locationManager?.startUpdatingLocation()
        print("THis is that")
        // Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
        //    self.shortestDistance += 1
        // }
        
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            // Great
            self.distanceFromStation = 111
        } else {
           self.distanceFromStation = 333
         }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        let myLastKnownLocation = location.coordinate
        let myLastKnownCourse = location.course
        
        let latitude: CLLocationDegrees = 37.2
        let longitude: CLLocationDegrees = 22.9
        let stationPimisiLocation: CLLocation = CLLocation(latitude: latitude,
          longitude: longitude)
        distanceFromStation = Int((location.distance(from: stationPimisiLocation) / 1000))
        print("My Last Long/Lat is: \(myLastKnownLocation) and \(myLastKnownCourse) and distance is: \(distanceFromStation)")
    }
}
struct LocatorVenueVehicle: View {
    @ObservedObject var stationProximityDetector = StationProximityDetector()
    
    var body: some View {
        VStack {
        Text("\(stationProximityDetector.shortestDistance)")
        Text("\(stationProximityDetector.distanceFromStation)")
        }
        
    }
}

struct LocatorVenueVehicle_Previews: PreviewProvider {
    static var previews: some View {
        LocatorVenueVehicle()
    }
}
