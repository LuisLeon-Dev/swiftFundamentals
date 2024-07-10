import Cocoa

//Protocols

protocol Vehiculo{
    var numRuedas: Int { get }
    func conducir()
}

class Coche: Vehiculo{
    var numRuedas: Int = 4
    func conducir() {
        print("Conduciendo...")
    }
}


//Protocolos Compuestos
//Swift permite que una clase, estructura o enumeración adopte múltiples protocolos. Esto se hace separando los nombres de los protocolos con comas:

protocol Nombrable{
    var nombre: String { get }
}

protocol Edadable{
    var edad: Int { get }
}

struct Persona: Nombrable, Edadable{
    var nombre: String
    var edad: Int
}




//Protocolos y Herencia
//Los protocolos pueden heredar de otros protocolos, lo que permite crear jerarquías de protocolos más complejas:

protocol Volador{
    func volar()
}

protocol AnimalVolador: Volador{
    var nombre: String { get }
}



//More Examples
protocol Vehicle {
    var name: String { get }
    var currentPassangers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}


struct Car: Vehicle{
    let name = "Car"
    var currentPassangers = 3
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    func travel(distance: Int) {
        print("I'm traveling \(distance)km")
    }
    
    func openSunRoof(){
        print("It's a nice day")
    }
}

struct Bicycle: Vehicle{
    let name = "Bicycle"
    var currentPassangers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    func travel(distance: Int) {
        print("I'm cycling \(distance)km")
    }
}


func commute(distance: Int, using vehicle: Vehicle){
    if vehicle.estimateTime(for: distance) > 100{
        print("That's too slow! I'll try a differrente vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
let bicycle = Bicycle()
commute(distance: 100, using: car)
commute(distance: 100, using: bicycle)



func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

getTravelEstimates(using: [car, bicycle], distance: 100)


//using extensions in protocols

protocol Person {
    var name: String { get }
    func sayHello()
}
//That means all conforming types must add a sayHello() method, but we can also add a default implementation of that as an extension like this:

extension Person{
    func sayHello() {
        print("Hello, I'm \(name)")
    }
}


//And now conforming types can add their own sayHello() method if they want, but they don’t need to – they can always rely on the one provided inside our protocol extension.
//So, we could create an employee without the sayHello() method:

struct Employee: Person{
    let name: String
}


//But because it conforms to Person, we could use the default implementation we provided in our extension:
let employee = Employee(name: "Mark Hoppus")
employee.sayHello()
