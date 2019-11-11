//
//  ISpeak.swift
//  AnyPA
//
//  Created by Guy Vales on 2019-11-10.
//  Copyright © 2019 Guy Vales. All rights reserved.
//

import SwiftUI

struct ISpeak: View {
    var announceType = ["Ad-hoc", "Boarding", "Gate Change", "Lost & Found", "Delay"]
    @State var adHocMsg: String = "This is an Ad-hoc message"
    @State private var selectedAnnounceType = 0
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selectedAnnounceType, label: Text("Announcement Type")) {
                        ForEach(0..<announceType.count) {
                            Text(self.announceType[$0])
                        }
                    }
                }
                Section {
                    Text("Your \(self.announceType[selectedAnnounceType]) message:")
                    if self.announceType[selectedAnnounceType] == "Ad-hoc" {
                        Text("Say What?")
                        Text("When?")
                        // TextField($adHocMsg, placeholder:
                        // Text("Msg"))
                    }
                    else if self.announceType[selectedAnnounceType] == "Delay" {
                        Text("Train line?")
                        Text("Delay Time")
                    }
                    else {
                        Text("Not Delay")
                    }
                }
            }
        }.navigationBarTitle("iSpeak Annoucement Form")
        
    }
}

struct ISpeak_Previews: PreviewProvider {
    static var previews: some View {
        ISpeak()
    }
}
