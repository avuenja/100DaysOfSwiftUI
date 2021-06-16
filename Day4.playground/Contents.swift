import UIKit

// For loops
let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

// While loops
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

var counter = 2
while counter < 64 {
    print("\(counter) is a power of 2.")
    counter *= 2
}

var cats: Int = 0
while cats < 10 {
    cats += 1
    print("I'm getting another cat.")
    if cats == 4 {
        print("Enough cats!")
        cats = 10
    }
}

var itemsSold: Int = 0
while itemsSold < 5000 {
    itemsSold += 100
    if itemsSold % 1000 == 1000 {
        print("\(itemsSold) items sold - a big milestone!")
    }
}

var number2: Int = 10
while number2 > 0 {
    number2 -= 2
    if number2 % 2 == 0 {
        print("\(number2) is an even number.")
    }
}

var position = 5
while position > 0 {
    print("\(position)!")
    position -= 1
}

var averageScore = 2.5
while averageScore < 15.0 {
    averageScore += 2.5
    print("The average score is \(averageScore)")
}

var speed = 50
while speed <= 55 {
    print("Accelerating to \(speed)")
    speed += 1
}

// Repeat loops
var number3 = 1

repeat {
    print(number3)
    number3 += 1
} while number3 <= 20

print("Ready or not, here I come!")

repeat {
    print("This is false")
} while false

let numbersShuffled = [1, 2, 3, 4, 5]
var random: [Int]

repeat {
    random = numbersShuffled.shuffled()
} while random == numbersShuffled

// Exiting loops
var countDown = 10

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

print("Blast off!")

var password = "1"
repeat {
    password += "1"
    if password == "11111" {
        print("That's a terrible password.")
    }
    break
} while true

var people = 2
while people < 10 {
    people += 2
    if people == 10 {
        print("We got 10 people.")
    }
}

for i in 1...15 {
    if i % 3 == 0 {
        if i % 5 == 0 {
            print("\(i) is a multiple of both 3 and 5.")
        }
    }
}

// Exiting multiple loops
myLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break myLoop
        }
    }
}

// Skipping items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

var hoursStudied = 0
var goal = 10
repeat {
    hoursStudied += 1
    if hoursStudied > 4 {
        goal -= 1
        continue
    }
    print("I've studied for \(hoursStudied) hours")
} while hoursStudied < goal

let fibonacci = [1, 1, 2, 3, 5, 8, 13, 21]
var position2 = 0
while position2 <= 7 {
    let value = fibonacci[position]
    position2 += 1
    if value < 2 {
       continue
    }
    print("Fibonacci number \(position2) is \(value)")
}

for i in 1...15 {
    let square = i * i
    if i == 8 {
        continue
    }
    print("\(i) squared is \(square)")
}

var distanceFlown = 0
while true {
    distanceFlown += 100
    if distanceFlown == 500 {
        continue
    }
    print(distanceFlown)
    if distanceFlown == 1000 {
        break
    }
}

var carsProduced = 0
repeat {
    carsProduced += 1
    if carsProduced % 2 == 0 {
        continue
    }
    print("Another car was built.")
} while carsProduced < 20

// Infinite loops
var counter3 = 0

while true {
    print(" ")
    counter3 += 1

    if counter3 == 273 {
        break
    }
}
