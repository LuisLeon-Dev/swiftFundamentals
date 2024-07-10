import Cocoa

//Default parameters let us make functions easier to call by letting us provide common defaults for parameters
func printTables(for number: Int, end: Int = 10){
    for item in 1...end{
        print("\(number) x \(item) = \(number * item)")
    }
}

//printTables(for: 2)
//printTables(for: 5, end: 4)



//Handlings errors
enum PasswordErrors: Error{
    case short, obivous
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5{
        throw PasswordErrors.short;
    }
    if password == "12345"{
        throw PasswordErrors.obivous;
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "GOOD"
    } else {
        return "EXCELLENT"
    }
}

let string = "125"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordErrors.short{
    print("The password it is to short.")
} catch PasswordErrors.obivous{
    print("The password it is easy to get")
}
catch{
    print("There was an error")
}
