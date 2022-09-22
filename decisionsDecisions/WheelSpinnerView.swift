//
//  WheelSpinnerView.swift
//  decisionsDecisions
//
//  Created by Geena Deierl on 20/9/2022.
//

import SwiftUI

struct WheelSpinnerView: View {
    @State private var spin = false
    var body: some View {
        VStack{
            Text("Wheel Spinner")
                .font(.title2)
                .fontWeight(.heavy)
            Button("Spin me") {
                spin.toggle()
            }
            .buttonStyle(.bordered)
            .tint(.purple)
            .font(.headline)
            Image("480px-Eight-colour-wheel-2D")
                .rotationEffect(.degrees(spin ? 360 : 0))
                //image rotates in the opposite direction every 2nd button press, potentially a result of the rotation in degrees^ being a stored variable
                .animation(.linear.repeatCount(5, autoreverses: false).speed(0.5), value: spin)
                .foregroundColor(.gray)
        }
    }
}

struct WheelSpinnerView_Previews: PreviewProvider {
    static var previews: some View {
        WheelSpinnerView()
    }
}
