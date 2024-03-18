//
//  ContentView.swift
//  Guzman's Tacos
//
//  Created by Luis Guzman on 3/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            NavigationLink(destination: UtilitiesScreen()){
                Image("tacos")
            }
            Text("Guzman's Tacos")
                .font(.title)
        }
        .navigationTitle("Guzman's Tacos")
  }
}

