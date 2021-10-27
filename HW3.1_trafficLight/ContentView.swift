//
//  ContentView.swift
//  HW3.1_trafficLight
//
//  Created by Anton Duplin on 26/10/21.
//

import SwiftUI
enum CurrentLight {
    case red, yellow, green
}



struct ContentView: View {
    @State private var currentLight = CurrentLight.red
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    var body: some View {
        ZStack{
        VStack {
        CirclesTraficLight(color: .red, opacity: redLight)
        CirclesTraficLight(color: .yellow, opacity: yellowLight)
        CirclesTraficLight(color: .green, opacity: greenLight)
                Spacer()
            getColorButton(label: "Start") {
                
                changeColor()
            }
        }
        }
    }
    private func changeColor() {
            
            let lightIsOn = 1.0
            let lightIsOff = 0.3
            
            switch currentLight {
            case .red:
                currentLight = .yellow
                greenLight = lightIsOff
                redLight = lightIsOn
            case .yellow:
                currentLight = .green
                redLight = lightIsOff
                yellowLight = lightIsOn
            case .green:
                currentLight = .red
                greenLight = lightIsOn
                yellowLight = lightIsOff
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
