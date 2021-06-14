import UIKit

// Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]
//beatles[9] (error)

var averages = [98.5, 97.1, 99.9]

var cities: [String] = ["London", "Paris", "New York"]

// Sets
let colors = Set(["red", "green", "blue"])

let colorsDuplicated = Set(["red", "green", "blue", "red"])

var scores = Set([9, 10])

let averageHeights = Set([1.71, 1.72, 1.73])

// Tuples
var name = (first: "Marcelo", last: "Pecin")
name.0
name.first

name.self

// Array vs Sets vs Tuples
let address = (house: 5555, street: "Taylor Swift Avenue", city: "Nashville")

let set = Set(["aardvark", "astronaut", "azalea"])

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// Dictionaries
let heights = ["Taylor Swift": 1.78, "Ed Sheeran": 1.73]
heights["Taylor Swift"]

let results = [
    "english": 100,
    "french": 85,
    "geography": 75
]
let historyResult = results["history", default: 0]

let capitals = ["England": "London", "Wales": "Cardiff"]
let scotlandCapital = capitals["Scotland"]

// Dictionaries default values

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"]

// Creating empty collections
//Dictionary
var teams = [String: String]()
teams["Paul"] = "Red"

var emptyScores = Dictionary<String, Int>()

//Array
var emptyResults = [Int]()
var emptyResults2 = Array<Int>()

//Set
var words = Set<String>()
var numbers = Set<Int>()

// Enumerations
let resultEnum = "failure"
let resultEnum2 = "failed"
let resultEnum3 = "fail"

enum Result {
    case failure
    case success
}

let resultEnum4 = Result.failure

// Enum associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volue: Int)
}

let talking = Activity.talking(topic: "football")

enum Weather {
    case sunny
    case windy(speed: Int)
    case rainy(chance: Int, amount: Int)
}

enum CharacterClass { case paladin(level: Int) }

// Enum raw values
enum Planet: Int {
    case mercury = 1 // we can change start number
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

enum Mood: String {
    case happy
    case sad
    case grumpy
    case sleepy
    case hungry
}

Mood(rawValue: "happy")
