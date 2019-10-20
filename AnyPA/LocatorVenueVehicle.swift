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
    // var locationManager = CLLocationManager()
    
    override init() {
    
        // locationManager? = CLLocationManager()
        super.init()
        locationManager?.delegate = self
        locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        locationManager?.requestWhenInUseAuthorization()
        locationManager?.startUpdatingLocation()
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.shortestDistance += 1
        }
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        let myLastKnownLocation = location.coordinate
        
        print("My Last Long/Lat is: \(myLastKnownLocation)")
    }
}
struct LocatorVenueVehicle: View {
    @ObservedObject var stationProximityDetector = StationProximityDetector()
    
    var body: some View {
        Text("\(stationProximityDetector.shortestDistance)")
    }
}

struct LocatorVenueVehicle_Previews: PreviewProvider {
    static var previews: some View {
        LocatorVenueVehicle()
    }
}
