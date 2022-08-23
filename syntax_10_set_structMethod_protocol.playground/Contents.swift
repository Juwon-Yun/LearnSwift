import UIKit

//https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html
// 알고있는 Set과 똑같다.
var numberSet : Set<Int> = Set<Int>()

numberSet.insert(1)

numberSet.insert(2)

numberSet.insert(3)

numberSet.insert(2)

numberSet.insert(3)

print(numberSet.count)

for item in numberSet{
    print("a number ::: ", item)
}

// .contains 내장메소드
var friend : Set<String> = ["철수", "영희", "수직"]

print(friend.contains("김고양"))

var otherFriend : [String] = ["철수", "영희", "수직"]

print(otherFriend.contains("철수"))

// 있으면 index, 없으면 nil
if let indexToRemove = friend.firstIndex(of: "영희"){
    // set의 인덱스는 배열이랑 다르다.
    // 빌드할때마다 다르다
    // 해쉬테이블의 인덱스를 반환한다.
    print(indexToRemove)
    friend.remove(at: indexToRemove)
}

print(friend) // ["철수", "수직"]

// struct는 생성자가 자동으로 생성된다.
// memberwise initialwise?
struct Friend {
    var age : Int
    
    var name : String
    
    func sayHello() -> String{
        print("sayHello() was called")
        return "저는 \(age)살, \(name)입니다."
    }
}

var structFriend = Friend(age: 5, name: "jw")

print(structFriend)

// 약속, 작명 관습 ~ing or ~able or ~delegate
protocol Naming {
    // 이러한 멤버 변수를 가지고 있을 것이다. 라고 약속함
    var name : String {get set}
    
    // 우리는 이러한 메소드를 가지고 있을 것이다. 라고 약속
    func getName() -> String
}

// Naming 이라는 약속을 지킨 구조체
struct protocolFriend : Naming{
    var name: String
    
    func getName() -> String {
        return "내친구 : " + name
    }
}

var proFriend = protocolFriend(name: "cs")

print(proFriend.getName())
