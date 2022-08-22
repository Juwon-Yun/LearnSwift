import UIKit

class Friend {
    var name : String
    func changeName(){
        self.name = "앞에 붙여준 텍스트 " + self.name
    }
    init(_ name : String){
        self.name = name
    }
}

var friend = Friend("jwyun")

friend.changeName()

friend.name

struct BestFriend{
    var name : String
    
    func changeName(newName: String){
        print("newName ::: ", newName)
    }
}

var bestFriend = BestFriend(name : "best")

bestFriend.changeName(newName: "앞에 붙여줄 텍스트 ")

// struct 안에서 변경이 안됨 그대로 나온다.
bestFriend.name // best


//struct 안에서 멤버 변수값을 변경하려면 mutating 키워드를 func 앞에 붙여준다.
struct MutatingBestFriend{
    var name : String
    
    mutating func changeName(newName: String){
        print("newName ::: ", newName)
        self.name = newName + self.name
    }
}

var mutating = MutatingBestFriend(name : "주원")

mutating.changeName(newName: "mutating test ")
 
mutating.name // "mutating test 주원"

