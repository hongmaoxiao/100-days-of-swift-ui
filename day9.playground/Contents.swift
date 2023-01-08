import Cocoa

func greetUser() {
    print("Hi there!")
}

greetUser()
var greetCopy = greetUser
greetCopy()

let sayHello = {
    print("Hi there!")
}

sayHello()

let sayHello1 = { (name: String) -> String in
    "Hi \(name)"
}
print(sayHello1("xhm"))

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

let captainFirstTeam1 = team.sorted(by: {
    (name1: String, name2: String) -> Bool in
        if name1 == "Suzanne" {
            return true
        } else if name2 == "Suzanne" {
            return false
        }
        
        return name1 < name2
})
print(captainFirstTeam1)

let captainFirstTeam2 = team.sorted(by: {
    name1, name2 in
        if name1 == "Suzanne" {
            return true
        } else if name2 == "Suzanne" {
            return false
        }
        
        return name1 < name2
})
print(captainFirstTeam2)

let captainFirstTeam3 = team.sorted(by: {
        if $0 == "Suzanne" {
            return true
        } else if $1 == "Suzanne" {
            return false
        }
        
        return $0 < $1
})
print(captainFirstTeam3)

let reverseTeam = team.sorted {
    return $1 < $0
}
print(reverseTeam)

let reverseTeam1 = team.sorted { $1 < $0 }
print(reverseTeam1)

let tOnly = team.filter({ $0.hasPrefix("T") })
print(tOnly)

let uppercaseTeam = team.map({ $0.uppercased() })
print(uppercaseTeam)
