import UIKit


struct SomeList<SomeElement>{
    
    // 제네릭을 담은 빈 배열
    var elements : [SomeElement] = [SomeElement]()
    
    init(_ elements:[SomeElement]){
        self.elements = elements
    }
}


struct Friend{
    var name: String
}


struct Ppack {
    var name: String
}

var someList = SomeList([1,2,3])

print(someList)

var stringList = SomeList(["1","2","3"])

print(stringList)


let friend_01 = Friend(name: "철수")
let friend_02 = Friend(name: "영희")
let friend_03 = Friend(name: "수잔")

print(friend_01, friend_02, friend_03)


// String을 반환하는 클로버
let some : String = {
    return "some text"
}()

print(some)

var some2 : String{
    return "some text 02"
}

print(some2)

// 쿨로저 정의 (매개변수타입) -> 리턴타입
let someClosure : (String) -> String = { (name : String)  -> String in
    return "개발하는 \(name)"
}

print(someClosure("jw"))

let otherClosure : (String) -> Void = { (text : String) in
    print("다른 \(text)")
}

otherClosure("클로저")
