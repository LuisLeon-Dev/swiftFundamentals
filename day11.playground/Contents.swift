import Cocoa

struct BankAccount {
   private var funds  = 0
    
    mutating func deposit(amount: Int){
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else{
            return false
        }
    }
}

//That has methods to deposit and withdraw money from a bank account, and should be used like this:

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}


//Add "private" to the variable in the struct. Now accessing funds from outside the struct ins't possible

//Swift provides us with several options, but when you’re learning you’ll only need a handful:

//Use private for “don’t let anything outside the struct use this.”
//Use fileprivate for “don’t let anything outside the current file use this.”
//Use public for “let anyone, anywhere use this.”


 //Static properties and methods

struct School {
    static var studentCount = 0
    
    static func add(student: String){
        print("\(student) joined the school.")
        studentCount += 1
    }
}

//Notice the keyword static in there, which means both the studentCount property and add() method belong to the School struct itself, rather than to individual instances of the struct.

School.add(student: "Mark Hoppus")
print(School.studentCount)

// I haven’t created an instance of School – we can literally use add() and studentCount directly on the struct. This is because those are both static, which means they don’t exist uniquely on instances of the struct


