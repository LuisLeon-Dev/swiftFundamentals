import Cocoa

protocol Bulding{
    var numOfRooms: Int { get }
    var cost: Int { get }
    var estateAgentName: String{ get }
    var isAvailable: Bool { get set }
    func saleSummary()
}


struct House: Bulding{
    var isAvailable: Bool
    let numOfRooms = 4
    let cost = 80_000
    let estateAgentName = "Chuk Bass"
   
    func saleSummary() {
        print("The house has \(numOfRooms) rooms, and it has a cost of $\(cost). Agent: \(estateAgentName)")
    }
}

struct Office: Bulding{
    var isAvailable: Bool
    let numOfRooms = 9
    let cost = 120_000
    let estateAgentName = "Ralph Flagg"
    func saleSummary() {
        print("The Office has \(numOfRooms) rooms, and it has a cost of $\(cost). Agent: \(estateAgentName)")
    }
}

func sale(isAvailable: Bool, using building: Bulding){
    if isAvailable{
        building.saleSummary()
    } else{
        print("SOLD!")
    }
}

let house = House(isAvailable: false)
sale(isAvailable: house.isAvailable, using: house)

let office = Office(isAvailable: true)
sale(isAvailable: office.isAvailable, using: office)
