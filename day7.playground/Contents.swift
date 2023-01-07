import Cocoa

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

func printTimesTablesWithEnd(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTablesWithEnd(number: 5, end: 20)


let root = sqrt(169)
print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

func rollDice1() -> Int {
    Int.random(in: 1...6)
}

let result = rollDice()
print(result)

print(rollDice1())

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}

print(areLettersIdentical(string1: "abc", string2: "acb"))

func areLettersIdentical1(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

print(areLettersIdentical1(string1: "abc", string2: "acb"))

func areLettersIdentical2(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

print(areLettersIdentical2(string1: "abc", string2: "acb"))

func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}
print(pythagoras(a: 3, b: 4))

func pythagoras1(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}
print(pythagoras1(a: 3, b: 4))



// return multiple values from functions
func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print("Name: \(user[0]) \(user[1])")

func getUserDict() -> [String: String] {
    ["firstName": "Taylor", "lastName": "Swift"]
}

let userDict = getUserDict()
print("Name: \(userDict["firstName", default: "Anonymous"]) \(userDict["lastName", default: "Anonymous"])")

func getUserTuple() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let userTuple = getUserTuple()
print("Name: \(userTuple.firstName) \(userTuple.lastName)")

let userTupleSep = getUserTuple()
let firstName = userTupleSep.firstName
let lastName = userTupleSep.lastName

print("Name: \(firstName) \(lastName)")

let (first, last) = getUserTuple()
print("Name: \(first) \(last)")

let (one, _) = getUserTuple()
print("Name: \(one)")


func getUserTuple1() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}
let userTuple1 = getUserTuple1()
print("Name: \(userTuple1.0) \(userTuple1.1)")

func getUserTuple2() -> (String, String) {
    ("Taylor", "Swift")
}
let userTuple2 = getUserTuple2()
print("Name: \(userTuple2.0) \(userTuple2.1)")
