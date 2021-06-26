import UIKit

// Creating basic closures
let driving = {
    print("I'm driving in my car")
}

driving()

let learnSwift = {
    print("Closures are like functions")
}
learnSwift()

// Accepting parameters in a closure
let drivingTo = { (place: String) in
    print("I'm going to \(place) in my car")
}
drivingTo("London")

// Returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

// Closures as parameters
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

// Trailing closure syntax
travel() {
    print("I'm driving in my car")
}

travel {
    print("I'm driving in my car")
}

func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation…")
    animations()
}

animate(duration: 3, animations: {
    print("Fade out the image")
})

animate(duration: 3) {
    print("Fade out the image")
}
