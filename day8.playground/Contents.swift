import Cocoa

func printTimesTables(for number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)

func printTimesTables1(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables1(for: 5, end: 20)
printTimesTables1(for: 8)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)



// How to handle errors in functions

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "Ok"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}




// Checkpoint 4

func findRoot(_ number: Int) -> Int {
    for i in 1...number {
        if i * i == number {
            return i
        }
    }
    
    return 0
}

enum rootError: Error {
    case outOfBounds, noRoot
}

func computeSqrt(_ number: Int) throws -> Int {
    if number < 1 || number > 10000 {
        throw rootError.outOfBounds
    }
    
    let root = findRoot(number)
    
    if root == 0 {
        throw rootError.noRoot
    }
    
    return root
}

do {
    let result = try computeSqrt(10001)
    print("return root: \(result)")
} catch rootError.outOfBounds {
    print("number should be >= 1 and <= 10000")
} catch rootError.noRoot {
    print("can not return the number root!")
} catch {
    print("unknown error")
}


