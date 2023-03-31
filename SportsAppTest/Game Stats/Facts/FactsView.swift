//
//  FactsView.swift
//  SportsAppTest
//
//  Created by Jacob Lavenant on 3/30/23.
//

import SwiftUI

struct FactsView: View {
    
    
    
    var body: some View {
        
        
        List {
            Section {
                VStack(alignment: .leading) {
                    Text("Who will win?")
                        .bold()
                        .font(.title3)
                    HStack {
                        WinProbabilty()
                        WinProbabilty()
                    }
                }
                .padding()
            }
            
            Section {
                VStack {
                    HStack {
                        Image(systemName: "tv")
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.black)
                                .frame(width: 150,height: 30)
                            Text("Bein Sports MENA")
                                .font(.subheadline)
                        }
                    }
                    HStack {
                        Image(systemName: "calendar")
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.black)
                                .frame(width: 150,height: 30)
                            Text("Aug 24, 23:00")
                                .font(.subheadline)
                        }
                    }
                    HStack {
                        Image(systemName: "building")
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.black)
                                .frame(width: 150,height: 30)
                            Text("TD Garden")
                                .font(.subheadline)
                        }
                    }
                    HStack {
                        Image(systemName: "person.fill")
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.black)
                                .frame(width: 150,height: 30)
                            Text("19,156 Attensance")
                                .font(.subheadline)
                        }
                    }
                }
            }
            
            Section {
                VStack(alignment: .leading) {
                    Text("Last 5 Games")
                        .bold()
                        .font(.title3)
                    HStack {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        Text("IND")
                        Spacer()
                        Image(systemName: "w.circle.fill")
                            .foregroundColor(Color.green)
                        Image(systemName: "d.circle.fill")
                            .foregroundColor(Color.gray)
                        Image(systemName: "l.circle.fill")
                            .foregroundColor(Color.red)
                        Image(systemName: "w.circle.fill")
                            .foregroundColor(Color.green)
                        Image(systemName: "w.circle.fill")
                            .foregroundColor(Color.green)
                        Spacer()
                        Text("3/5")
                    } .padding(.top, 5)
                    HStack {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        Text("DET")
                        Spacer()
                        Image(systemName: "w.circle.fill")
                            .foregroundColor(Color.green)
                        Image(systemName: "d.circle.fill")
                            .foregroundColor(Color.gray)
                        Image(systemName: "l.circle.fill")
                            .foregroundColor(Color.red)
                        Image(systemName: "w.circle.fill")
                            .foregroundColor(Color.green)
                        Image(systemName: "w.circle.fill")
                            .foregroundColor(Color.green)
                        Spacer()
                        Text("3/5")
                    } .padding(.top, 5)
                }
            }
            
            Section {
                CompareTeamStats()
            }
        }
        
    }
}

struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView()
    }
}
