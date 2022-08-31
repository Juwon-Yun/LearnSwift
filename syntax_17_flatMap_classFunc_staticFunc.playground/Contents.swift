import UIKit

let twoDepthArray = [
    ["철00"], ["철01"],
    ["철10"],
    ["철20"],
    ["철30"], ["철31"]
]

let flatMap = twoDepthArray.flatMap{ (item : [String]) in
    return item
}
// 2차원 배열을 1차원으로 평평하게 만들어 준다고해서 flatMap이다
print(flatMap) // ["철00", "철01", "철10", "철20", "철30", "철31"]

// static func is same as final class func
class Friend {
    func sayHi(){
        print("인사")
    }
    
    class func sayBye(){
        print("바이")
    }
    
    static func sayhoho(){
        print("호호")
    }
}


class BestFriend : Friend {
    class override func sayBye() {
        super.sayBye()
        print("override sayBye")
    }
    
    func sayhoho(){
        print("override sayHoho")
    }
}

let friend = Friend()

friend.sayHi() // 인사

Friend.sayBye() // 바이

Friend.sayhoho() // 호호

BestFriend.sayBye() // 바이 // override sayBye

BestFriend.sayhoho() // 호호 -> final class랑 같다 상속되지 않음

