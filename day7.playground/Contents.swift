import Cocoa

func countNumbers(start: Int, end: Int) {
    for number in start...end{
        print(number)
    }
}

//countNumbers(start: 50, end: 100)

func rollTheDice() -> Int {
    let random = Int.random(in: 1...6)
    return random
}

var dice = rollTheDice()
//print(dice)

func sameStrings(firstWord: String, secondWord: String ) -> Bool{
    let word1 = firstWord.sorted()
    let word2 = secondWord.sorted()
    return word1 == word2
}

sameStrings(firstWord: "hello", secondWord: "lohe")
sameStrings(firstWord: "hi", secondWord: "ih")


func pythagoras(a: Double, b: Double) -> Double {
        sqrt(a*a + b*b)
}

let c = pythagoras(a: 3, b: 4)
//print(c)


func dice(side: Int, count: Int) -> [Int]{
    var rolls = [Int]()
    for _ in 1...count{
        let random = Int.random(in: 1...side)
        rolls.append(random)
    }
    return rolls
}

let rolls = dice(side: 6, count: 2)
//print(rolls)

// create a function to calculate the average grade in [8.6, 7.2, 7.1, 9.8]
func calculateAverage(prom: [Double]) -> Double {
    var grades = 0.0
    for grade in prom {
        grades += grade
    }
    let finalProm = grades / Double(prom.count)
    let rounded_grade = round(finalProm * 10 ) / 10
    return rounded_grade
}

var finalGrade = calculateAverage(prom: [7.3, 8.0, 5.2, 6.8])
//print(finalGrade)


func sumTwoNumber(numer1: Int, numer2: Int) -> Int{
    let sum = numer1 + numer2;
    return sum
}

sumTwoNumber(numer1: 5, numer2: 5)


func calculateRectangleArea(height: Double, width: Double) -> Double {
    let result = height * width
    return result
}

calculateRectangleArea(height: 5, width: 6)

func evenOrOdd(number: Int) -> String {
    if number % 2 == 0{
        return "Even"
    } else {
        return "Odd"
    }
}

evenOrOdd(number: 16)

func reverseString(word: String) -> String {
    var reversedWord = ""
    
    for char in word {
        reversedWord = String(char) + reversedWord
    }
    return reversedWord;
}

reverseString(word: "olleh")

func celsiusToFahrenheit(celsius: Double) -> Double{
    var c = (celsius * 9/5) + 32
    return round(c * 10 ) / 10
}

celsiusToFahrenheit(celsius: -22.0)



