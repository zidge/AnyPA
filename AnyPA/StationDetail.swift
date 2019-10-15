//
//  StationDetail.swift
//  AnyPA
//
//  Created by Guy Vales on 2019-10-11.
//  Copyright © 2019 Guy Vales. All rights reserved.
//

import SwiftUI

struct StationDetail: View {
    let trainStation: TrainStation
    
    var body: some View {
        
        NavigationView {
        
        
        VStack(alignment: .leading) {
        Image(trainStation.thumbnailNameStation)
            .resizable()
            .aspectRatio(contentMode: .fit)
        
       
        Text("Station Audio Announcements")
        Text(" ")
        Text("10:55AM An earlier incident has been resolved.  Normal service now resumed")
        Text("10:40AM Due to an incident, we expect a delay of 20 minutes")
        Text("10:30AM Passenger with bicycles are invited to board the last car")
        Text(" ")
        NavigationLink(destination: Following()) {
        Text("You may follow in-train and/or station announcements")
        Spacer()

        }
            } .padding()
        .navigationBarTitle(Text("\(trainStation.name)" + " Station"), displayMode: .inline)
        }
    }
}

struct StationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        StationDetail(trainStation: testData[1])
    }
}
}
