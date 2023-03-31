//
//  GameStats.swift
//  SportsAppTest
//
//  Created by Jacob Lavenant on 3/31/23.
//

import SwiftUI

struct GameStats: View {
    
    @State private var selectedView: String? = "Facts"
    
    var body: some View {
        
        
        NavigationStack{
            Section{
                Header()
            }
            Section{
                Group {
            if selectedView == "Facts" {
                FactsView()
            } else if selectedView == "Feed" {
                Feed()
            } else if selectedView == "Stats" {
                Stats()
            } else if selectedView == "Chat" {
                Chat()
            } else if selectedView == "Lineup" {
                Lineup()
            }
        }
            }
        }
        
        
    }
}

struct GameStats_Previews: PreviewProvider {
    static var previews: some View {
        GameStats()
            .colorScheme(.dark)
    }
}
