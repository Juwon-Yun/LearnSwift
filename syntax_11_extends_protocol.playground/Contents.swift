import UIKit

protocol Naming{
    var lastName : String {get set}
    var firstName : String{get set}
    
    func getName() -> String
}

// dart의 extension on이랑 똑같다.
extension Naming{
    func getFullname() -> String{
        return self.lastName + " " + firstName
    }
}

struct Friend : Naming {
    
    var lastName: String
    
    var firstName: String
    
    func getName() -> String {
        return self.lastName
    }
}

let friend = Friend(lastName: "jw", firstName: "y")

print(friend.getName()) // jw

print(friend.getFullname()) // jw y
