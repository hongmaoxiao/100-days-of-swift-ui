import Cocoa

// How to create your own classes
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10


// How to make one class inherit from another
class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()


// How to add initializers for classes
class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)
print(teslaX.isConvertible)
print(teslaX.isElectric)


// How to copy classes
class User {
    var username = "Anonymous"
}

var user1 = User()
var user2 = user1
user2.username = "Taylor"
print(user1.username)
print(user2.username)

struct UserSturct {
    var username = "Anonymous"
}

var user3 = UserSturct()
var user4 = user3
user3.username = "Taylor"
print(user3.username)
print(user4.username)

class UserCopy {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}
var user5 = UserCopy()
var user6 = user5.copy()
user5.username = "Taylor"
print(user5.username)
print(user6.username)


// How to create a deinitializer for a class
class UserWithDel {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = UserWithDel(id: i)
    print("User \(user.id): I'm in control!")
}

var users = [UserWithDel]()

for i in 1...3 {
    let user = UserWithDel(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")


// How to work with variables inside classes
class User1 {
    var name = "Paul"
}
let user7 = User1()
user7.name = "Taylor"
print(user7.name)

var user8 = User1()
user8.name = "Taylor"
print(user8.name)
user8 = User1()
print(user8.name)
