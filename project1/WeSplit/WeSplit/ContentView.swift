//
//  ContentView.swift
//  WeSplit
//
//  Created by Marcelo Pecin on 26/06/21.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Hermione"
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter your name", text: $name)
                    Text("Your name is \(name)")
                    
                    ForEach(0 ..< 3) { number in
                        Text("Hello, world! \(number + 1)")
                    }
                }
                
                Section {
                    Picker("Select your student", selection: $selectedStudent) {
                        ForEach(0 ..< students.count) {
                            Text(self.students[$0]).tag(self.students[$0])
                        }
                    }
                    Text("Selected student: \(selectedStudent)")
                    
                    Text("#100DaysOfSwiftUI")
                    Text("My day 16!")
                }
                
                Section {
                    Button("Tap Count: \(tapCount)") {
                        self.tapCount += 1
                    }
                }
            }
            .navigationBarTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
