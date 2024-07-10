import Cocoa
//1. Filter out any numbers that are even
//2. Sort the array in ascending order
//3. Map them to strings in the format “7 is a lucky number”
//4. Print the resulting array, one item per line


let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let number = luckyNumbers.filter{ !$0.isMultiple(of: 2) }.sorted().map{ "\($0) is a lucky number"}
number.forEach{ print("\($0)")}
