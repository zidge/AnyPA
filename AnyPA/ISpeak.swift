//
//  ISpeak.swift
//  AnyPA
//
//  Created by Guy Vales on 2019-11-10.
//  Copyright © 2019 Guy Vales. All rights reserved.
//

import SwiftUI

struct ISpeak: View {
    var announceType = ["Ad-hoc", "Boarding", "Departure", "Gate Change", "Lost & Found", "Delay"]
    @State var adHocMsg: String = "This is an Ad-hoc message"
    @State private var selectedAnnounceType = 0
    @State var sayAnnouncement = false
    
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
                        Button(action: {
                            self.sayAnnouncement.toggle()
                        })
                           {
                               Text("Play Announcement")
                           }
                
                    }
                    else if self.announceType[selectedAnnounceType] == "Departure" {
                            Text("Train line?")
                            Text("Departure Time?")
                             Button(action: {
                                 self.sayAnnouncement.toggle()
                             })
                                {
                                    Text("Play Announcement")
                                }
                        }
                    else if self.announceType[selectedAnnounceType] == "Delay" {
                        Text("Train line?")
                        Text("Expected Delay")
                         Button(action: {
                             self.sayAnnouncement.toggle()
                         })
                            {
                                Text("Play Announcement")
                            }
                    }
                    else if self.announceType[selectedAnnounceType] == "Lost & Found" {
                            Text("Lost Item")
                            Text("Description")
                             Button(action: {
                                 self.sayAnnouncement.toggle()
                             })
                                {
                                    Text("Play Announcement")
                                }
                        }
                    else {
                        Text("No message for selected category")
                    }
                    
            }
        }.navigationBarTitle("iSpeak Annoucement Form")
        
    }
}
}
struct ISpeak_Previews: PreviewProvider {
    static var previews: some View {
        ISpeak()
    }
}
