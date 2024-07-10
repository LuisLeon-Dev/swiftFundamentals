import Cocoa

//Bolens and data types

let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 9))


var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)


var gameOver = false
print(gameOver)

gameOver.toggle()
print(gameOver)


//How to join strings
let firstWord = "Hello"
let secondWord = " World"
let greeting = firstWord + secondWord
print(greeting)

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)


//Swift allows to use doble quotes inside strings
let quote = "Then he tapped a sign saying \"Believe\" and walked away."


let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)


//Change the type value
let missionMessage = "Apollo " + String(number) + " landed on the moon."

