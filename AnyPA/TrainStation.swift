//
//  TrainStation.swift
//  AnyPA
//
//  Created by Guy Vales on 2019-10-06.
//  Copyright © 2019 Guy Vales. All rights reserved.
//

import Foundation
// import UIKit
import SwiftUI

struct TrainStation : Identifiable {
    var id = UUID()
    var trainId: Int
    var name: String
    var address: String
    var hasVideo: Bool = false
    var nextTrainTimeBlairBound: String {return "11:05, 11:10"}
    var tunneysBoundNextTrainTime: String {return "11:09, 11:14"}
    var imageName: String { return name }
    var thumbnailNameStation: String { return name + "_Station_" + "Thumb" }
    var thumbnailName: String { return "TrainStationBlueGreen" }}

#if DEBUG
let testData = [
    TrainStation(trainId: 1, name: "Tunneys", address: "Nearby...", hasVideo: true),
    TrainStation(trainId: 2, name: "Bayview", address: "Nearby...", hasVideo: true),
    TrainStation(trainId: 3, name: "Pimisi", address: "Nearby", hasVideo: false),
    TrainStation(trainId: 4, name: "Lyon", address: "Nearby...", hasVideo: true),
    TrainStation(trainId: 5, name: "Parliament", address: "Nearby...", hasVideo: true),
    TrainStation(trainId: 6, name: "Rideau", address: "Nearby...", hasVideo: false),
    TrainStation(trainId: 7, name: "uOttawa", address: "Nearby...", hasVideo: true),
    TrainStation(trainId: 8, name: "Lees", address: "Nearby...", hasVideo: true),
    TrainStation(trainId: 9, name: "Hurdman", address: "Nearby...", hasVideo: false),
    TrainStation(trainId: 10, name: "Tremblay", address: "Nearby...", hasVideo: true),
    TrainStation(trainId: 11, name: "St-Laurent", address: "Nearby...", hasVideo: true),
    TrainStation(trainId: 12, name: "Cyrville", address: "Nearby...", hasVideo: false),
    TrainStation(trainId: 13, name: "Blair", address: "Nearby...", hasVideo: false),
]
#endif
