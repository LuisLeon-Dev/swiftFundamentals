import Cocoa

struct Book{
    let title: String
    let author: String
    let pages: Int
    var available: Bool
    
    func description(){
        print("Title: \(title), Author: \(author), Pages: \(pages), Available: \(available ? "Yes" : "No")")
    }
    func largeBook() -> Bool{
        return pages > 300 ? true : false
    }
    mutating func changeAvailability(){
        if available == true{
            available = false
        } else{
            available = true
        }
    }
}


var book = Book(title: "The Hobbit", author: "J.R.R Tolkien", pages: 284, available: false)
var book2 = Book(title: "The Stand", author: "Stephen King", pages: 1605, available: true)

book.description()
print(book.largeBook())
book.changeAvailability()
book.description()

print("-----------------------------------------------------------------------------")
book2.description()
print(book2.largeBook())
book2.changeAvailability()
book2.description()
