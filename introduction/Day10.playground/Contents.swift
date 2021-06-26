import UIKit

// Creating your own classes
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

class BoardGame {
    var name: String
    var minimumPlayers = 1
    var maximumPlayers = 4
    init(name: String) {
        self.name = name
    }
}

// Class inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

class Handbag {
    var price: Int
    init(price: Int) {
        self.price = price
    }
}
class DesignerHandbag: Handbag {
    var brand: String
    init(brand: String, price: Int) {
        self.brand = brand
        super.init(price: price)
    }
}

// Overriding methods
class Dog2 {
    func makeNoise() {
        print("Woof!")
    }
}

class Poodle2: Dog2 {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy2 = Poodle2()
poppy2.makeNoise()

// Final classes
final class Dog3 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// Copying objects
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)

// Deinitializers
class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

// Mutability
class Singer2 {
    var name = "Taylor Swift" // use let
}

let taylor = Singer2()
taylor.name = "Ed Sheeran"
print(taylor.name)


class Pizza {
    private var toppings = [String]()
    func add(topping: String) {
        toppings.append(topping)
    }
}
var pizza = Pizza()
pizza.add(topping: "Mushrooms")
