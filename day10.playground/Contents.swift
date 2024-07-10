import Cocoa

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func primarySummary(){
        print("\(title) (\(year)) by \(artist)")
    }
}


//That creates a new type called Album, with two string constants called title and artist, plus an integer constant called year. I also added a simple function that summarizes the values of our three constants.

let americanIdiot = Album(title: "American Idiot", artist: "Green Day", year: 2004)
let toypaj = Album(title: "Take Off Your Pants And Jacket", artist: "Blink-182", year: 2001)

print(americanIdiot.title)
print(toypaj.artist)

americanIdiot.primarySummary()
toypaj.primarySummary()



struct Employee {
    let name: String
    var vacationRemaining: Int
//
//  If we create an employee as a constant using let, Swift makes the employee and all its data constant – we can call functions just fine, but those functions shouldn’t be allowed to change the struct’s data because we made it constant.
//
//  As a result, Swift makes us take an extra step: any functions that only read data are fine as they are, but any that change data belonging to the struct must be marked with a special mutating keyword, like this:
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)


//Compute property values
struct VacationsDays {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        set{
            vacationAllocated = vacationTaken + newValue
        }
    }
}


var joe = VacationsDays(name: "Joe Armstrong", vacationAllocated: 14)
joe.vacationTaken += 4
joe.vacationRemaining = 5
print(joe.vacationAllocated)



//Swift lets us create property observers, which are special pieces of code that run when properties change. These take two forms: a didSet observer to run when the property just changed, and a willSet observer to run before the property changed.

struct Game {
    var score = 0 {
        didSet{
            print("The score is: \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1


//That creates a Game struct, and modifies its score a few times. Each time the score changes, a print() line follows it so we can keep track of the changes. Except there’s a bug: at the end the score changed without being printed, which is a mistake.
//
//With property observers we can solve this problem by attaching the print() call directly to the property using didSet, so that whenever it changes – wherever it changes – we will always run some code.


//Ex 2
struct App {
    var agenda = [String]() {
        willSet{
            print("Current value: \(agenda)")
            print("New value will be: \(newValue)")
        }
        didSet{
            print("There are now \(agenda.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.agenda.append("Adrian E")
app.agenda.append("Allen W")
app.agenda.append("Ish S")


//how to create custom initializers
struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player.number)
