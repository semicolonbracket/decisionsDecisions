//
//  ContentView.swift
//  decisionsDecisions
//
//  Created by Geena Deierl on 19/9/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                //Image(systemName: "globe")
                //    .imageScale(.large)
                //    .foregroundColor(.accentColor)
                Text("Decisions, Decisions!")
                    .font(.title)
                    .padding(.bottom, 50.0)
                NavigationLink(destination: QuickDecisionView()) {
                    Text("Quick Decision")
                }
                .tint(.red)
                .buttonStyle(.bordered)
                NavigationLink(destination: WheelSpinnerView()) {
                    Text("Wheel Spinner")
                }
                .tint(.purple)
                .buttonStyle(.bordered)
                NavigationLink(destination: MiniGameView()) {
                    Text("Mini Game")
                }
                .tint(.blue)
                .buttonStyle(.bordered)
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
