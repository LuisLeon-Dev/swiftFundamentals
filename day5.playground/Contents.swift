import Cocoa

//Conditionals


var online = false;

if online {
    print("The user is Online")
} else {
    print("The user is Offline")
}

let ourName = "Dave Lister"
let friendName = "Bruce Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

var nums = [1,2,3];

nums.append(4);
print(nums)

if nums.count > 3 {
    nums.remove(at: 0)
}

print(nums)

let user = ""
if user.isEmpty{
    print("Welcome Stranger")
} else {
    print("Welcome \(user) ")
}


let age = 16;
var hasParentalConsent = true;

if age >= 18 || hasParentalConsent{
    print("You can play the game")
} else {
    print("You can't play this game")
}


//switch case
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.rain

switch forecast{
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "New York":
    print("Spider-man!")
default:
    print("Who are you?")
}

let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}


//ternary operator
var theme = "dark"

print(theme == "dark" ? "dark theme" : "clear theme")

var isAuthenticated = false;
print(isAuthenticated ? "Welcome back" : "Who are you?")
