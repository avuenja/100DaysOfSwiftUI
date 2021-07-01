//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Marcelo Pecin on 01/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Text("SwiftUI!")
            Text("#100DaysOfSwiftUI")
            
            Spacer()
            
            HStack {
                Text("@celopeccin")
                Text("Project 2 - Guess The Flag")
                
                //LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .top, endPoint: .bottom)
                //RadialGradient(gradient: Gradient(colors: [.yellow, .black]), center: .center, startRadius: 20, endRadius: 200)
                //AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
            }
            
            Spacer()
            
            ZStack {
                //Color(red: 1, green: 0.8, blue: 0)
                //Color.red.edgesIgnoringSafeArea(.all)
                //Color.blue.frame(width: 200, height: 200)
                
                Text("Hacking with Swift")
                Text("Inside Stack")
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
