//
//  ContentView.swift
//  SportsAppTest
//
//  Created by Jacob Lavenant on 3/30/23.
//

import SwiftUI

struct Header: View {
    
    @State private var selectedView: String? = "Facts"
    
    var body: some View {
        
        
        NavigationStack {
            HStack {
                VStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 75)
                    Text("Indian Pacers")
                }
                VStack {
                    Text("126-118")
                        .font(.largeTitle)
                        .padding(.bottom, 4)
                    Text("3rd•6:21")
                }
                VStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 75)
                    Text("Detroit Pistons")
                }
            } .padding(.bottom, 15)
            HStack {
                Button(action: {
                    selectedView = "Facts"
                }) {
                    Text("Facts")
                        .foregroundColor(.white)
                }
                Spacer()
                Button(action: {
                    selectedView = "Feed"
                }) {
                    Text("Feed")
                        .foregroundColor(.white)
                }
                Spacer()
                Button(action: {
                    selectedView = "Stats"
                }) {
                    Text("Stats")
                        .foregroundColor(.white)
                }
                Spacer()
                Button(action: {
                    selectedView = "Chat"
                }) {
                    Text("Chat")
                        .foregroundColor(.white)
                }
                Spacer()
                Button(action: {
                    selectedView = "Lineup"
                }) {
                    Text("Lineup")
                        .foregroundColor(.white)
                }
            }
            
            
//            Group {
//        if selectedView == "Facts" {
//            FactsView()
//        } else if selectedView == "Feed" {
//            Feed()
//        } else if selectedView == "Stats" {
//            Stats()
//        } else if selectedView == "Chat" {
//            Chat()
//        } else if selectedView == "Lineup" {
//            Lineup()
//        }
//    }
            
            
}
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
