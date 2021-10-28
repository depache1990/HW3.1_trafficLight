//
//  getColorButton.swift
//  HW3.1_trafficLight
//
//  Created by Anton Duplin on 27/10/21.
//

import SwiftUI

struct getColorButton: View {
    
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.title)
                .foregroundColor(Color.blue)
                .frame(maxWidth: 130.0)
        }
        . cornerRadius(25)
        .buttonStyle(.bordered)
        .tint(.blue)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.white, lineWidth: 4))
        
        
        
        
    }
}

struct getColorButton_Previews: PreviewProvider {
    static var previews: some View {
        getColorButton(label: "Next", action: {})
    }
}
