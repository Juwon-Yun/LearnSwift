import UIKit

class Friend {
    var name : String
    
    init(_ name: String = "이름없음") {
        self.name = name
        print("init() Friend가 메모리에 올라갔다.")
    }
    
    deinit{
        print("deinit() Friend가 메모리에서 없어졌다.", self.name)
    }
    
    var calledTimes = 0
    let MAX_TIMES = 5
    
    static var instancesOfSelf = [Friend]()
    
    class func destorySelf(object: Friend){
        instancesOfSelf = instancesOfSelf.filter{ (friend : Friend) in
            friend !== object
        }
    }
    
    func called(){
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > MAX_TIMES {
            Friend.destorySelf(object: self)
        }
    }
}

let friend = Friend("윤");
let otherFriend = Friend();

// Unmanaged.passUnretained(instance).toOpaque()로 해당 객체의 메모리 주소를 프린트 할 수 있다.
let objectMemoryAddress = Unmanaged.passUnretained(friend).toOpaque();

let otherObjectMemoryAddress = Unmanaged.passUnretained(otherFriend).toOpaque();

print(objectMemoryAddress)

print(otherObjectMemoryAddress)

weak var willBedestroyFriend = Friend("스위프트 주원")

if willBedestroyFriend != nil{
    willBedestroyFriend!.called()
}else{
    // deinit이 호출된것이다.
    print("객체가 더 이상 메모리에 없습니다.")
}
