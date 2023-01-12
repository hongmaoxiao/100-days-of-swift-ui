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

// How to unwrap optionals with nil coalescing
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]
let new = captains["Serenity"] ?? "N/A"
print(new)
let new1 = captains["Serenity", default: "N/A"]
print(new1)

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"
print(favorite)

struct Book0 {
    let title: String
    let author: String?
}
let book0 = Book0(title: "Beowulf", author: nil)
let author0 = book0.author ?? "Anonymous"
print(author0)

let input = ""
let num = Int(input) ?? 0
print(num)

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

let names1 = ["Taylor", "Paul", "Adele"]
let lengthOfLast = names1.last?.count
print(lengthOfLast)


// handle function failure with optionals
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user1 = (try? getUser(id: 23)) ?? "Anonymous"
print(user1)
