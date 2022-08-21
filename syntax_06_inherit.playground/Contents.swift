import UIKit

class Friend {
    var name : String
    
    init(_ name : String) {
        self.name = name
    }
    
    func sayHi() {
        print("반가워 나는 \(self.name)라고 해")
    }
}

// 상속해서 덮어씌운다
class BestFriend : Friend {
    // override 메소드로 부모의 메소드를 가져온다.
    override init(_ name: String) {
        super.init("베프 " + name)
        
    }
    
    override func sayHi(){
        super.sayHi()
    }
}

let friend01 = Friend("프렌드 01 ")

friend01.sayHi()

let friend02 = Friend("프렌트 02 ")

friend02.sayHi()

let bestFriend01 = BestFriend("프렌드 01")

bestFriend01.sayHi()
