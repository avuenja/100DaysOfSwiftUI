import UIKit

// Writing functions
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

printHelp()

// Accepting parameters
func square(number: Int) {
    print(number * number)
}
square(number: 8)

// Returning values
func square2(number: Int) -> Int {
    return number * number
}
let result = square2(number: 8)
print(result)

func greet(name: String) -> String {
    if name == "Taylor Swift" {
        return "Oh wow!"
    } else {
        return "Hello, \(name)"
    }
}

//func getUser() -> [String] {
//    ["Taylor", "Swift"]
//}

//let user = getUser()
//print(user[0])

func getUser() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}

let user = getUser()
print(user.first)

// Parameter labels
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")

// Omitting parameter labels
func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")

// Default parameters
func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greet2("Taylor")
greet2("Taylor", nicely: false)

// Variadic functions
func square3(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square3(numbers: 1, 2, 3, 4, 5)

// Writing throwing functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

enum PlayError: Error {
    case cheating
    case noPlayers
}
func playGame(name: String, cheat: Bool = false) throws {
    if cheat {
        throw PlayError.cheating
    } else {
        print("Let's play a game of \(name)...")
    }
}

// Running throwing functions
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// inout parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
