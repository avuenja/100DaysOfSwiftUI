import UIKit

// Creating your own structs
struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"
print(tennis.name)

// Computed properties
struct OlympicSport {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = OlympicSport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

struct Swordfighter {
    var name: String
    var introduction: String {
        return "Hello, my name is \(name)."
    }
}
let inigo = Swordfighter(name: "Inigo Montoya")
print(inigo.introduction)

// Property observers
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

// Methods
struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

// Mutating methods
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()

// Properties and methods of strings
let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

let definitelyTrue = "Fox in box"
definitelyTrue.contains("socks")

let username = "twostraws"
username.uppercased() == "TWOSTRAWS"

var favoriteIceCream = "choc chip"
favoriteIceCream.count > 10

// Properties and methods of arrays
var toys = ["Woody"]

print(toys.count)

toys.append("Buzz")
toys.firstIndex(of: "Buzz")

print(toys.sorted())

toys.remove(at: 0)

var fibonacci = [1, 1, 2, 3, 5, 8]
fibonacci.sorted() == [1, 2, 3, 5, 8]

var usedNumbers = [Int]()
for i in 1...10 {
    usedNumbers.append(i)
}
usedNumbers.count > 5

let movies = ["A New Hope", "Empire Strikes Back", "Return of the Jedi"]
movies.firstIndex(of: "A New Hope") == 4

let spaceships = ["Serenity", "Enterprise"]
spaceships.contains("Serenity")

let tens = [30, 20, 10]
tens.sorted() == [10, 20, 30]

let cardGames = ["Poker", "Blackjack", "Whist"]
cardGames.firstIndex(of: "Whist") == 2

let marines = ["Apone", "Hicks", "Vasquez"]
marines.contains("Hicks")

var results = [true, true, false, true]
results.remove(at: 2)
results.count == 3

var breeds = ["Corgi", "Labrador", "Samoyed"]
breeds.contains("corgi")
