import Cocoa

class Publish{
    let title: String
    let author: String
    let pages: Int
    
    init(title: String, author: String, pages: Int) {
        self.title = title
        self.author = author
        self.pages = pages
    }
    
    func description() -> String{
        return ("Title: \(title), Author: \(author), Num of pages: \(pages)")
    }
}

class Book: Publish{
    let genre: String
    
    init(title: String, author: String, pages: Int, genre: String) {
        self.genre = genre
        super.init(title: title, author: author, pages: pages)
    }
    
    override func description() -> String {
        return super.description() + (", Genre: \(self.genre)")
    }
}

let book = Book(title: "It", author: "Stephen King", pages: 1505, genre: "Horror")
print(book.description())


class Magazine: Publish{
    let edition: Int
    
    init(edition: Int, title: String, author: String, pages: Int) {
        self.edition = edition
        super.init(title: title, author: author, pages: pages)
    }
    
    override func description() -> String {
        return super.description() + (", Edition Number: \(edition)")
    }
}
    

let magazine = Magazine(edition: 4, title: "Guitar World", author: "Mark Hoppus", pages: 63)
print(magazine.description())
