import Cocoa

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        }
        return false
        
    }
}

var account = BankAccount()
account.deposit(amount: 100)
print(account.funds)
let success = account.withdraw(amount: 200)

if success {
    print("Withdraw money successfully")
} else {
    print("Failed to get the money")
}


// Static properties and methods
struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "setting.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

struct Employee {
    let uername: String
    let password: String
    
    static let example = Employee(uername: "cfederighi", password: "hairforceone")
}

print(Employee.example.uername)


// Checkpoint 6
struct CarInfo {
    let model = "BMW"
    let seats = 4
    private(set) var gear = 1
    
    mutating func addGear() -> Bool {
        if gear >= 10 {
            return false
        }
        gear += 1
        return true
    }
    
    mutating func descendGear() -> Bool {
        if gear <= 1 {
            return false
        }
        gear -= 1
        return true
    }
}

var car = CarInfo()
print(car.gear)
car.addGear()
print(car.gear)
car.addGear()
print(car.gear)
print(car.descendGear())
print(car.gear)
print(car.descendGear())
print(car.gear)
print(car.descendGear())
print(car.gear)
