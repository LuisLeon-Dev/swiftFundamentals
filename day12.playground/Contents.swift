import Cocoa

class Game{
    var score = 0{
        didSet{
            print("the score now is: \(score)")
        }}
}

var newGame = Game()
newGame.score += 10

//Initializer in classes

class Person{
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    //methods
    func description() -> String{
        return ("Hi, my name is \(name) and I'm \(age) years old.")
    }
}

//instancia
let person1 = Person(name:"Luis", age:25)
person1.description()


//How to make one class inherit from another?

class Student: Person{
    var prom: Double
    
    init(name: String, age: Int, prom: Double ) {
        self.prom = prom
        super.init(name: name, age: age)
    }
    
    //Si necesitas cambiar el comportamiento de uno de estos elementos heredados en la clase hija, debes usar override para sobreescribir la implementación heredada.
    
    override func description() -> String {
        return super.description() + (" grade: \(prom)")
    }
}

let person2 = Student(name:"Luis", age:25, prom:9.5)
person2.description()



//Example 2 - Inheritence

class Employee{
    let hours: Int
    
    init(hours: Int){
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee{
    func work(){
        print("I'm writing code for \(hours)")
    }
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee{
    func work(){
        print("I'm going to meetings for \(hours) hours.")
    }
}


let john = Developer(hours: 9)
let jeff = Manager(hours: 5)
jeff.work()
john.work()


let novall = Developer(hours: 8)
novall.printSummary()



//initializer in classes
class Vehicule {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicule{
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool ) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric) //call the super.init
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)



//how to copy classes
class Persons{
    var name = "Anonymous"
}

let user1 = Persons()
var user2 = user1

user2.name = "Josh"

print(user1.name)
print(user2.name)


//If you want to create a unique copy of a class instance – sometimes called a deep copy – you need to handle //creating a new instance and copy across all your data safely.

//In our case that’s straightforward:

class Users {
    var username = "Anonymous"

    func copy() -> Users {
        let user = Users()
        user.username = username
        return user
    }
}


//How to create a deinitializer for a class?
class User{
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive")
    }
    deinit{
        print("User \(id): I'm dead")
    }
}

var users = [User]()

for i in 1...3{
    let user = User(id: i)
    print("User \(user.id): I'm in control")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")

