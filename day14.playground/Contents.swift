import Cocoa

// How to handle missing data with optionals
let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]

let peachOpposite = opposites["Peach"]
print(peachOpposite)

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil
if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func squre(number: Int) -> Int {
    number * number
}

var number: Int? = nil
if let number = number {
    print(squre(number: number))
}

// How to unwrap optionals with guard
func printSqure(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}
printSqure(of: nil)

var myVar: Int? = 3
if let unwrapped = myVar {
    print("Run if myVar has a value inside")
}


// How to handle multiple optionals using optional chaining
let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

struct Book {
    let title: String
    let author: String?
}
var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)
