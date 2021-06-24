import UIKit

// Variables and constants
var name = "Tim McGraw"
name = "Romeo"

let color = "Blue"

// Types of Data
var skill: String
skill = "Strong"

var age: Int
age = 25

var latitude: Double
latitude = 36.166667

var longitude: Float
longitude = -86.783333

var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool
missABeat = false

// Operators
var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 10
b -= 10

var name1 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2

// String interpolation
"Your name is \(name)"

// Arrays
var evenNumbers = [2, 4, 6, 8]
var songs = ["Shake it Off", "You Belong with Me", "Back to December"]

// Dictionaries
var person = ["first": "Taylor", "middle": "Alison", "last": "Swift", "month": "December", "website": "taylorswift.com"]
person["middle"]
person["month"]

// Conditional statements
var action: String
var hater = "hater"

if hater == "hater" {
    action = "hate"
}

// Loops
for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}

// Switch case
let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You're just starting out")

case 1:
    print("You just released iTunes Live From SoHo")

case 2:
    print("You just released Speak Now World Tour")

default:
    print("Have you done something new?")
}
