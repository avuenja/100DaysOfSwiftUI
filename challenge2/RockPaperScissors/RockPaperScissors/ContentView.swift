//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Marcelo Pecin on 06/07/21.
//

import SwiftUI

struct Highscore: View {
    var playerScore: Int
    var aiScore: Int
    
    var body: some View {
        HStack {
            Text("AI score: \(playerScore)")
            
            Spacer()
            
            Text("Your score: \(aiScore)")
        }
        .padding()
    }
}

struct ContentView: View {
    @State private var playerChoose = ""
    @State private var aiChoose = ""
    @State private var playerScore = 0
    @State private var aiScore = 0
    @State private var rockPaperScissors = ["Rock", "Paper", "Scissors"].shuffled()
        
    var body: some View {
        NavigationView {
            VStack {
                Highscore(playerScore: playerScore, aiScore: aiScore)
                
                Spacer()
                
                HStack {
                    ForEach (0 ..< rockPaperScissors.count) { option in
                        Button("\(self.rockPaperScissors[option])") {
                            playerChoose = self.rockPaperScissors[option]
                            round()
                        }
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    }
                }
                
                Spacer()
            }
        }
    }
    
    func round() {
        aiChoose = rockPaperScissors[Int.random(in: 0...2)]
        
        winner()
        
        rockPaperScissors.shuffle()
    }
    
    func winner() {
        if (aiChoose == playerChoose) {
            print("draw")
        } else if (aiChoose == "Rock" && playerChoose == "Paper") {
            playerScore += 1
        } else if (aiChoose == "Scissors" && playerChoose == "Paper") {
            aiScore += 1
        } else if (aiChoose == "Paper" && playerChoose == "Scissors") {
            playerScore += 1
        } else if (aiChoose == "Paper" && playerChoose == "Rock") {
            aiScore += 1
        } else if (playerChoose == "Rock" && aiChoose == "Paper") {
            aiScore += 1
        } else if (playerChoose == "Scissors" && aiChoose == "Paper") {
            playerScore += 1
        } else if (playerChoose == "Paper" && aiChoose == "Scissors") {
            aiScore += 1
        } else if (playerChoose == "Paper" && aiChoose == "Rock") {
            playerScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
