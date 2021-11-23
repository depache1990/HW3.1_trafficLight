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
    @State private var titleOfButton = "START"
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                CirclesTraficLight(color: .red, opacity: currentLight == .red ? 1 : 0.3)
                CirclesTraficLight(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
                CirclesTraficLight(color: .green, opacity: currentLight == .green ? 1 : 0.3)
                
                Spacer()
                
                getColorButton(label: "Start") {
                    if titleOfButton == "START" {
                        titleOfButton = "NEXT"
                    }
                    changeColor()
                }
            }
        }
        
        
    }
    private func changeColor() {
        
        switch currentLight {
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
