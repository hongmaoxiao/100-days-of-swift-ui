import Cocoa

let goodDogs = true

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

var gameOver = false
gameOver.toggle()
print(gameOver)

let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

let luggageCode = "1" + "2" + "3" + "4" + "5"

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

let number = 11
//let missionMessage = "Apollo " + String(number) + " landed on the moon"
let missionMessage = "Apollo \(number) landed on the moon"

print("5 x 5 is \(5 * 5)")

let celsius = 25.0
let fahrenheit = celsius * 9 / 5 + 32
print("celsius \(celsius) converts to fahrenheit is: \(fahrenheit)")
