import UIKit

// Initializers
struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"

struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let roslin = Employee(name: "Laura Roslin")
print(roslin.name)

// as does creating an anonymous employee
let anon = Employee()
anon.name

// Referring to the current instance
struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

struct StudentSelf {
    var name: String
    var bestFriend: String

    init(name: String, bestFriend: String) {
        print("Enrolling \(name) in class…")
        self.name = name
        self.bestFriend = bestFriend
    }
}

// Lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct PersonFamily {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var edFamily = PersonFamily(name: "Ed")
edFamily.familyTree

// Static properties and methods
struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")
print(Student.classSize)

struct Amplifier {
    static let maximumVolume = 11
    var currentVolume: Int
}

// Access control
struct PersonId {
    private var id: String

    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let edId = PersonId(id: "12345")
edId.identify()
