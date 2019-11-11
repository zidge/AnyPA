//
//  ISpeak.swift
//  AnyPA
//
//  Created by Guy Vales on 2019-11-10.
//  Copyright © 2019 Guy Vales. All rights reserved.
//

import SwiftUI

struct ISpeak: View {
    var announceType = ["Ad-hoc", "Boarding", "Gate Change", "Lost & Found", "Delayed Flight"]
    
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
            }
        }.navigationBarTitle("iSpeak Annoucement Form")
        
    }
}

struct ISpeak_Previews: PreviewProvider {
    static var previews: some View {
        ISpeak()
    }
}
