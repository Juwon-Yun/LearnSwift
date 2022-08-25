import UIKit

protocol Naming {
    func getName () -> String
}

protocol Aging {
    func getAge() -> Int
}


typealias Friendable = Naming & Aging

typealias FullNaming = Naming

// 이거랑 같음
// struct Friend : Friendable {} 


// protocol 2개 쓰는방법
struct Friend : Naming & Aging{
    
    var name : String
    var age : Int
    
    func getName() -> String {
        return self.name
    }
    
    func getAge() -> Int {
        return self.age
    }
}

typealias FriendName = String

var friendName : String = "yjw"

typealias Friends = [Friend]

var friendArray : Friends = []

// 클로저도 별칭이 가능하다

typealias StringBlock = (String) -> Void

func sayHi(completion : (String) -> Void){
    print("하이")
    completion("오늘도 빡코딩")
}

func sayClosure(completion : StringBlock){
    print("하이")
    completion("오늘도 빡코딩")
}

sayHi(completion: {saying in
    print("여기서 받음 ", saying)
})

typealias SOME_TYPE_ALIAS = someClass.SOME_TYPE

class someClass {
    enum SOME_TYPE{
        case DOG
        case CAT
        case BIRD
    }
    var someType = SOME_TYPE.BIRD
}

var myClass = someClass()

myClass.someType = SOME_TYPE_ALIAS.BIRD

print("my Type", myClass.someType)


// 클로저 이름, 이넘 이름이 길어지면 보통 typeAlias를 사용한다.



