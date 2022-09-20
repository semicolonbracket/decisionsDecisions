//
//  QuickDecisionView.swift
//  decisionsDecisions
//
//  Created by Geena Deierl on 20/9/2022.
//

import SwiftUI

struct QuickDecisionView: View {
    @State private var input = ""
    @State private var inputs:[String] = []
    @State private var result = ""
    
    var body: some View {
        VStack{
            Text("Quick Decision!")
                .font(.title2)
                .fontWeight(.heavy)
            HStack(){
                TextField("Insert option here", text: $input)
                    .multilineTextAlignment(.center)
                    .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .padding(.leading)
                Button("ENTER") {
                    inputs.append(input)
                    input = ""
                    for i in inputs{
                        print(i)
                    }
                }
                .padding(.trailing, 30.0)
                //.padding(.leading, -20.0)
                .buttonStyle(.bordered)
                .tint(.blue)
            }
            Button("RANDOMISE") {
                result = inputs.randomElement() ?? "invalid input:("
            }
            .buttonStyle(.bordered)
            .tint(.purple)
            //.bold() - only for min IOS 16.0 deployment
            .font(.headline)
            Button("RESET") {
                inputs = []
                input = ""
                result = ""
            }
            .buttonStyle(.bordered)
            .tint(.red)
            Text(result)
                .fontWeight(.semibold)
                .padding(.top, 30.0)
        }
    }
}

struct QuickDecisionView_Previews: PreviewProvider {
    static var previews: some View {
        QuickDecisionView()
    }
}
