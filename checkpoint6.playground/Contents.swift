import Cocoa

struct Car{
    let model: String
    let numberOfSeats: Int
    private var gear = 0
    
    init(model: String, numberOfSeats: Int, gear: Int = 0) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.gear = gear
    }
    
    
    mutating func changeGearUp(){
        if gear < 10 {
            gear += 1
            print("Changed gear to \(gear)")
        } else {
            print("Already in highest gear")
        }
    }
    
    mutating func changeGearDown(){
        if gear > 1 {
            gear -= 1
            print("Changed gear to \(gear)")
        } else {
            print("Already in lowest gear")
        }
    }
}
