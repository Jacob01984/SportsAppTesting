//
//  CompareStats.swift
//  SportsAppTest
//
//  Created by Jacob Lavenant on 3/31/23.
//

import SwiftUI

struct CompareStatsBar: View {
    
    var value1 = 35
    var value2 = 65
    
    var body: some View {
        
        
        VStack {
            HStack {
                Text("\(value1)%")
                    .bold()
                    .font(.title3)
                Spacer()
                Text("Shots")
                    .bold()
                    .font(.title3)
                Spacer()
                Text("\(value2)%")
                    .bold()
                    .font(.title3)
            }
            
            GeometryReader { geometry in
                ZStack {
                    // Background for the progress bar
    //                RoundedRectangle(cornerRadius: 10)
    //                    .frame(width: geometry.size.width, height: 10)
    //                    .foregroundColor(Color.black.opacity(0.8))
                    
                    // Progress bar for value1
                    HStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: CGFloat(value1) * geometry.size.width / 100, height: 10)
                            .foregroundColor(.yellow)
                        
                        
                        // Progress bar for value2, mirrored
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: CGFloat(value2) * geometry.size.width / 100, height: 10)
                            .foregroundColor(.red)
                            .scaleEffect(x: -1, y: 1, anchor: .center)
                    }
                }
            }
        } .frame(height: 50)
    }
}

struct CompareStats_Previews: PreviewProvider {
    static var previews: some View {
        CompareStatsBar()
    }
}
