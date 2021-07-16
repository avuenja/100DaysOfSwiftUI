//
//  ContentView.swift
//  Animations
//
//  Created by Marcelo Pecin on 15/07/21.
//

import SwiftUI

struct ContentView: View {
    @State private var redAnimationAmount: CGFloat = 1
    @State private var blueAnimationAmount: CGFloat = 1
    @State private var greenAnimationAmount = 0.0
    
    var body: some View {
        VStack(spacing: 60) {
            Button("Tap Me") {
                self.redAnimationAmount += 1
            }
            .padding(50)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(redAnimationAmount)
            .animation(
                Animation.easeInOut(duration: 1)
                    .repeatCount(3, autoreverses: true)
            )
            
            Button("Tap Me") {
                // do nothing
            }
            .padding(50)
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.blue)
                    .scaleEffect(blueAnimationAmount)
                    .opacity(Double(2 - blueAnimationAmount))
                    .animation(
                        Animation.easeInOut(duration: 1)
                            .repeatForever(autoreverses: false)
                    )
            )
            .onAppear {
                self.blueAnimationAmount = 2
            }
            
            Button("Tap Me") {
                withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                    self.greenAnimationAmount += 360
                }
            }
            .padding(50)
            .background(Color.green)
            .foregroundColor(.white)
            .clipShape(Circle())
            .rotation3DEffect(
                .degrees(greenAnimationAmount),
                axis: (x: 0, y: 1, z: 0)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
