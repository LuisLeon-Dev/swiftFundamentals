import Cocoa

//how to create closures
let helloWorld = {
    print("Hello World")
}

var helloWorldCopy: () -> Void = helloWorld

let sayHi = {(name: String) -> String in
        "Hello \(name)"
}

sayHi("Chuck")


//Every function’s type depends on the data it receives and sends back. That might sound simple, but it hides an important catch: the names of the data it receives are not part of the function’s type.

func getUserData(for id: Int) -> String {
    if id == 1989{
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)


let team = ["Nate", "Serena", "Dan", "Chuck", "Blair"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if (name1 == "Chuck"){
        return true
    } else if(name2 == "Chuck"){
        return false
    }
    
    return name1 > name2
}

//let captainSorted = team.sorted(by: captainFirstSorted)
//print(captainSorted)
let captainSorted = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if (name1 == "Chuck"){
        return true
    } else if(name2 == "Chuck"){
        return false
    }
    
    return name1 > name2
})

print(captainSorted)


let players = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let onlyT = players.filter{ $0.hasPrefix("T") }
print(onlyT)

let upperCaseTeam = players.map{ $0.uppercased() }
print(upperCaseTeam)



//Write function that accepts functions as parameters
func makeArray(size: Int, using generator: () -> Int) -> [Int]{
    var numbers = [Int]()
    
    for _ in 0..<size{
        let newNumber = generator()
        numbers.append(newNumber)
        }

    return numbers
}



func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 30, using: generateNumber)
print(newRolls)


func functionWithParameter(param: ((String) -> String)){
    let hi = "Hello"
    print(param(hi))
}

//func greeting() -> String{
//    return "Hello, Goodbye"
//}

//functionWithParameter(param: greeting)


functionWithParameter { word in
    return "\(word), playground"
}

