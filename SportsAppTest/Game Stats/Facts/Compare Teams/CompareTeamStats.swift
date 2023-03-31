//
//  CompareTeamStats.swift
//  SportsAppTest
//
//  Created by Jacob Lavenant on 3/31/23.
//

import SwiftUI

struct CompareTeamStats: View {
    
    var teamPic = Image(systemName: "person.circle.fill")
    
    var body: some View {
        
        
        VStack {
            HStack {
                teamPic
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 60)
                Spacer()
                Text("21/22 Performance")
                    .bold()
                    .font(.title3)
                Spacer()
                teamPic
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 60)
            }
            CompareStatsBar()
            CompareStatsBar()
            CompareStatsBar()
            CompareStatsBar()
            CompareStatsBar()
        }
        
        
    }
}

struct CompareTeamStats_Previews: PreviewProvider {
    static var previews: some View {
        CompareTeamStats()
    }
}
