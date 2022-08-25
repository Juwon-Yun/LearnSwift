import UIKit

struct Pet {
    init(){
        print("Pet이 생성되었다.")
    }
}

struct Friend {
    var name : String
    // lazy는 선언과 동시에 메모리에 올리지 않고,
    // 사용할 떄에 메모리에 올려서 사용한다.
    lazy var pet : Pet = Pet()
    
    init(_ name : String){
        self.name = name
        print("Friend init() was called")
    }
}

var someFriend = Friend("yjw")


someFriend.pet
