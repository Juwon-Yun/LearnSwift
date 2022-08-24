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

// protocol associated Type
protocol PetHaving{
    // associatedtype T란 T 타입을 갖고 있는 PetHaving으로 추상화 한다.
    associatedtype T
    var pets: [T] {get set}
    mutating func gotNewPet(_ newPet : T)
}

extension PetHaving{
    mutating func gotNewPet(_ newPet : T){
        self.pets.append(newPet)
    }
}

enum Animal {
    case cat, dog, bird
}

struct petFriend : PetHaving {
    mutating func gotNewPet(_ newPet: Animal) {
        self.pets.append(newPet)
    }
    
    var pets: [Animal] = []
}

struct petFamily : PetHaving {
    mutating func gotNewPet(_ newPet: String) {
        self.pets.append(newPet)
    }
    
    var pets: [String] = []
}

var petFriend1 = petFriend()

petFriend1.gotNewPet(Animal.bird)
petFriend1.gotNewPet(Animal.cat)
petFriend1.gotNewPet(Animal.dog)
petFriend1.pets

var petFamily1 = petFamily()

petFamily1.gotNewPet("거북이")
petFamily1.gotNewPet("토끼")
petFamily1.gotNewPet("강아지")
petFamily1.pets

print(petFriend1.pets)
print(petFamily1)
