//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Marcelo Pecin on 04/07/21.
//

import SwiftUI

struct HText: View {
    var texts: [String]
    
    var body: some View {
        HStack {
            ForEach (0 ..< texts.count) {
                Text("\(self.texts[$0])")
            }
        }
    }
}

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        self.modifier(Watermark(text: text))
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("SwiftUI")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue)
                .edgesIgnoringSafeArea(.all)
                .font(.title)
                .watermarked(with: "#100DaysOfSwiftUI")
            
            HText(texts: ["@celopeccin", "Hacking with Swift"])
                .foregroundColor(.black)
            
            Button("#100DaysOfSwiftUI") {
                print(type(of: self.body))
            }
            .frame(width: 200, height: 200)
            .background(Color.red)
            .padding()
            .background(Color.blue)
            .padding()
            .background(Color.green)
            .padding()
            .background(Color.yellow)
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
