//
//  CirclesTraficLight.swift
//  HW3.1_trafficLight
//
//  Created by Anton Duplin on 26/10/21.
//

import SwiftUI


struct CirclesTraficLight: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            
        
    }
}
struct CirclesTraficLight_Previews: PreviewProvider {
    static var previews: some View {
        CirclesTraficLight(color: .red, opacity: 1)
    }
}
