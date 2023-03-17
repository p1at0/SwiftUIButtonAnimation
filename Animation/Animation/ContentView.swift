//
//  ContentView.swift
//  Animation
//
//  Created by Abdulla on 27.01.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var rotationDegrees: Double = 0
    @State private var scale: CGFloat = 1
    @State private var buttonColor: Color = .red
    
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut(duration: 0.5)) {
                rotationDegrees += 360
                scale = scale == 1 ? 1.5 : 1
                buttonColor = buttonColor == .red ? .blue : .red
            }
        }) {
            Text("Tap me")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .background(buttonColor)
                .cornerRadius(10)
        }
        .rotation3DEffect(.degrees(rotationDegrees), axis: (x: 0, y: 1, z: 0))
        .scaleEffect(scale)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
