import Cocoa

//Loops

for i in 1...10{
    print(i * 2)
}

//nested for lopps
for i in 1...5{
    for j in 1...5{
        print("\(i) x \(j) = \(i*j)")
    }
}

for i in 1..<5{
    print("Counting 1 up to 5: \(i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

//while loop

var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")


let id = Int.random(in: 1...1000)
print(id)

let id2 = Double.random(in: 0...1)
print(id2)


// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit!")


//breaks in loops

