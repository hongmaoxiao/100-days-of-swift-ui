import Cocoa

// How to create your own structs
struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
print(red.title)
red.printSummary()

let wings = Album(title: "Wings", artist: "BTS", year: 2016)
print(wings.artist)
wings.printSummary()

struct Employee {
    let name: String
    var vacationRemaining: Int = 14
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

var archer1 = Employee(name: "Sterling Archer", vacationRemaining: 14)
var archer2 = Employee.init(name: "Sterling Archer", vacationRemaining: 14)
print(archer1.vacationRemaining)
print(archer2.vacationRemaining)

let kane = Employee(name: "Lana Kane")
let poovey = Employee(name: "Pam Poovey", vacationRemaining: 35)
print(kane.vacationRemaining)
print(poovey.vacationRemaining)



// compute property values dynamically
struct Employee1 {
    let name: String
    var vacationRemaining: Int
}
var archer3 = Employee1(name: "Sterling Archer", vacationRemaining: 14)
archer3.vacationRemaining -= 5
print(archer3.vacationRemaining)
archer3.vacationRemaining -= 3
print(archer3.vacationRemaining)

struct Employee2 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
}
var archer4 = Employee2(name: "Sterling Archer", vacationAllocated: 14)
archer4.vacationTaken += 4
print(archer4.vacationRemaining)
archer4.vacationTaken += 4
print(archer4.vacationRemaining)

struct Employee3 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}
var archer5 = Employee3(name: "Sterling Archer", vacationAllocated: 14)
archer5.vacationTaken += 4
print(archer5.vacationRemaining)
archer5.vacationRemaining = 5
print(archer5.vacationAllocated)


// take action when a property changes
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")



// How to create custom initializers
struct Player {
    let name: String
    let number: Int
    
    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}
let player = Player(name: "Megan R", number: 15)
print(player.name)

struct Player1 {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}
let player1 = Player1(name: "Megan R")
print(player1.number)
