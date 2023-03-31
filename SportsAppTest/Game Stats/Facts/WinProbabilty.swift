//
//  WinProbabilty.swift
//  SportsAppTest
//
//  Created by Jacob Lavenant on 3/30/23.
//

import SwiftUI

struct WinProbabilty: View {
    
    var winProb: Int = 68
    var teamColor = Color.blue
    var teamPic = Image(systemName: "person.circle.fill")
    
    var body: some View {
        
            GeometryReader { geometry in
                       ZStack(alignment: .leading) {
                           RoundedRectangle(cornerRadius: 10)
                               .frame(width: geometry.size.width, height: 60)
                               .foregroundColor(Color.black.opacity(0.8))
                           
                           RoundedRectangle(cornerRadius: 10)
                               .frame(width: CGFloat(winProb) * geometry.size.width / 100, height: 60)
                               .foregroundColor(teamColor.opacity(0.7))
                           
                           HStack {
                               Spacer()
                               teamPic
                                   .resizable()
                                   .scaledToFit()
                                   .frame(width: 30, height: 60)
                               VStack(alignment: .leading) {
                                   Text("IND")
                                       .bold()
                                   Text("546 Vote")
                                       .font(.caption)
                               }
                               Spacer()
                               Text("\(winProb)%")
                                   .font(.callout)
                                   .padding(.bottom, 15)
                               Spacer()
                           }
                       } .background(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 2)
                        )
            } .frame(width: 160, height: 50)
            
            
        
    }
}

struct WinProbabilty_Previews: PreviewProvider {
    static var previews: some View {
        WinProbabilty()
    }
}

//.frame(width: 150, height: 60)
