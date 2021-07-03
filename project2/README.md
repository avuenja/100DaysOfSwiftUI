# Project 2 (Guess The Flag)

![GuessTheFlag](https://pbs.twimg.com/media/E5VShBzWQAUBIda?format=jpg&name=medium)

### Day 20 - Project 2, part one

- Guess the Flag: Introduction
- Using stacks to arrange views

  ```swift
  ZStack {}
  HStacl {}
  VStack {}
  ```

- Colors and frames

  ```swift
  Color(red: 1, green: 0.8, blue: 0)
  Color.red.edgesIgnoringSafeArea(.all)
  Color.blue.frame(width: 200, height: 200)
  ```

- Gradients

  ```swift
  LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .top, endPoint: .bottom)
  RadialGradient(gradient: Gradient(colors: [.yellow, .black]), center: .center, startRadius: 20, endRadius: 200)
  AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
  ```

- Buttons and images

  ```swift
  Button(action: {
      print("Button was tapped")
  }) {
      HStack {
          Image(systemName: "pencil")
          Text("Edit")
      }
  }
  ```

- Showing alert messages

  ```swift
  Alert(title: Text("Hello SwiftUI!"), message: Text("This is some detail message"), dismissButton: .default(Text("OK")))
  ```

### Day 21 - Project 2, part two

- Stacking up buttons
- Showing the player’s score with an alert
- Styling our flags
