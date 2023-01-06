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
