import Cocoa

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

