import Cocoa

func randomElement(from array: [Int]?) -> Int {
    array?.randomElement() ?? Int.random(in: 1...100)
}

/*
 Explanation
 array?: This safely unwraps the optional array. If array is nil, the right-hand side of the nil-coalescing operator (??) is used.
 
 .randomElement(): This method returns a random element from the array if the array is not nil and not empty.
 
 Int.random(in: 1...100): This generates a random integer between 1 and 100 if the array is nil or empty.
 
 ??: The nil-coalescing operator provides a fallback value if the left-hand side is nil.
 This single line of code handles the optional array, checks if it's nil or empty, and either returns a random element from the array or a random number between 1 and 100.
 
 */

