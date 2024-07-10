import Cocoa

//Arrays

var nums = [1,2,3,4,5,6]
print(nums[2])


var wwe = ["Edge", "Christian", "John Cena", "Triple H", "The Undertaker"]

print(wwe)

wwe.append("Rey Mysterio")
wwe.append("Kane")

print(wwe)


//Empty Array
var blink182 = [String]()

blink182.append("Tom Delonge")
blink182.append("Mark Hoppus")
blink182.append("Travis Barker")

print(blink182)

var greenDay = Array<String>()
greenDay.append("Bllie Joe Armstrong")
greenDay.append("Tre Cool")
greenDay.append("Mike Drint")

print(greenDay)


print(blink182.count)
blink182.remove(at: 0)
print(blink182.count)
blink182.removeAll()
print(blink182)


let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen")) //return true or false

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let greaterthan = [4,2,1,3,5,7]
print(greaterthan.sorted())



//Dictionaries
let Mark = [
    "name": "Mark Hoppus",
    "job": "Bass player and vocals",
    "city": "San Diego, California",
]

print(Mark["name", default: "Unknow"] )

//Empty dictionary
var Tom = [String: String] ()
Tom["name"] = "Tom Delonge"
Tom["job"] = "Guitar player and vocals"

print(Tom["name", default: "Unknow"])


print(Tom)
Tom["job"] = "Guitar player "
print(Tom)


//Sets
// Sets can't contain any duplicated value

let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)


var wrestlers = Set<String>()

wrestlers.insert("Seth Rollins")
wrestlers.insert("Randy Orton")

print(wrestlers)

//enums

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.friday
day = .thursday

