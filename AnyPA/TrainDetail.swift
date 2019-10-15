//
//  TrainDetail.swift
//  AnyPA
//
//  Created by Guy Vales on 2019-10-13.
//  Copyright © 2019 Guy Vales. All rights reserved.
//

import SwiftUI

struct TrainDetail: View {
        let trainStation: TrainStation
        
        var body: some View {
            
            NavigationView {
            
            
            VStack(alignment: .leading) {
            Image(trainStation.thumbnailName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
           
            Text("in-Train Audio Announcements")
            Text(" ")
            Text("9:15AM Please remove any object that may be blocking the door")
            Text("9:00AM Due to an incident, we expect a delay of 10 minutes")
            Text("8:30AM This is a reminder to respect seating priority")
            Text(" ")
            NavigationLink(destination: Following()) {
            Text("You may follow in-train and/or station announcements")
            Spacer()

            }
                } .padding()
            .navigationBarTitle(Text("You are on Train #" + "\(trainStation.trainId)"), displayMode: .inline)
            }
        }
    }

struct TrainDetail_Previews: PreviewProvider {
    static var previews: some View {
        TrainDetail(trainStation: testData[0])
    }
}
