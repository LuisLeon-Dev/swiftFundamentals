import Cocoa

class Animal{
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
}


//Cat and Dog classes
class Dog: Animal{
    init(){
        super.init(legs: 4)
    }
    func speak(){
        print("bark")
    }
}


class Cat: Animal{
    var isTame: Bool
    
    init(isTame: Bool){
        self.isTame = isTame
        super.init(legs: 4)
    }
    func speak(){
        print("miau")
    }
}


//subclasses
class Corgi: Dog{
    override func speak() {
        print("Woof, I'm a corgi dog")
    }
}

class Poodle: Dog{
    override func speak() {
        print("Woof woof, I'm so fluffy")
    }
}



class Persian: Cat{
    override func speak() {
        print("Miau! I'm a persian cat")
    }
}

class Lion: Cat{
    override func speak() {
        print("I am the king of the jungle")
    }
}


let lion = Lion(isTame: false)
lion.speak()

let poodle = Poodle()
poodle.speak()

let corgi = Corgi()
print(corgi.legs)


let persian = Persian(isTame: true)
print(persian.isTame)
