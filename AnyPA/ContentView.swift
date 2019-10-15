//
//  ContentView.swift
//  AnyPA
//
//  Created by Guy Vales on 2019-10-05.
//  Copyright © 2019 Guy Vales. All rights reserved.
//


import SwiftUI

struct ContentView: View {
    var trainStations: [TrainStation] = []
    
    var body: some View {
        
        NavigationView {
            
           List(trainStations) { trainStation in
            
            
            NavigationLink(destination: StationDetail(trainStation: trainStation)) {
            Image(trainStation.thumbnailNameStation)
                .resizable()
                .cornerRadius(3.0)
                .frame(width: 150, height: 125)
            
            VStack(alignment: .leading) {
                Text(trainStation.name)
                Text("Blair Bound: Next train @ " + "\(trainStation.nextTrainTimeBlairBound)")
                .font(.subheadline)
                Text("Tunneys Bound: Next train @ " + "\(trainStation.tunneysBoundNextTrainTime)")
                .font(.subheadline)
                // Text(trainStation.address)
                // .font(.subheadline)
                // Text("Train ID: " + "\(trainStation.trainId)")
                // .font(.subheadline)
                
            }
           }
        }
        .navigationBarTitle(Text("Train Stations"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(trainStations: testData)
    }
}
