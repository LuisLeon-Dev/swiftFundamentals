import Cocoa

//var => create a variable
var greeting = "Hello, playground"
print(greeting)

//var => allows to change the value sets in the variable
greeting = "Hello World"
print(greeting)

//let => create constant
//Constant never change the value
let name = "Luis"


//Strings
let quote = "Then he tapped a sign saying \"Believe\" and walked away."
// the \ allows to use quotes inside the string

let movie = """
A day in
the life of an
Apple engineer
"""

//count allows to know how many characters are inside the string
print(movie.count)

//put the string in uppercase
print(greeting.uppercased())


//lets us know whether a string starts with some letters of our choosing
print(movie.hasPrefix("a day"))


//Numbers

let score = 10;

//for big numbers, swift allows to use underscore to break up numbers
let reallyBig = 100_000_000;


let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)

var counter = 10
counter = counter + 5

counter *= 2
print(counter)

//multiple of
let number = 20
print(number.isMultiple(of: 3))
print(25.isMultiple(of: 5))
counter -= 10
print(counter)
counter /= 2
print(counter)
