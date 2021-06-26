import UIKit

// Protocols
protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

protocol Climbable {
    var height: Double { get }
    var gradient: Int { get }
}

// Protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

// Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

number.isEven

// Protocol extensions
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

let numbers = [4, 8, 15, 16]
let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }

let numbers2 = Set([4, 8, 15, 16])
let allEven2 = numbers2.allSatisfy { $0.isMultiple(of: 2) }

let numbers3 = ["four": 4, "eight": 8, "fifteen": 15, "sixteen": 16]
let allEven3 = numbers3.allSatisfy { $0.value.isMultiple(of: 2) }

protocol Politician {
    var isDirty: Bool { get set }
    func takeBribe()
}
extension Politician {
    func takeBribe() {
        if isDirty {
            print("Thank you very much!")
        } else {
            print("Someone call the police!")
        }
    }
}

// Protocol-oriented programming
protocol Id {
    var id: String { get set }
    func identify()
}

extension Id {
    func identify() {
        print("My ID is \(id).")
    }
}

struct Player: Id {
    var id: String
}

let twostraws = Player(id: "twostraws")
twostraws.identify()

protocol HasAge {
    var age: Int { get set }
    mutating func celebrateBirthday()
}
