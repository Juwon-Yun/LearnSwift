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

// 고차함수
// 매개변수로 함수 또는 클로저를 받고 받았던 매개변수를 변환하고 반환하는 함수
// 콜렉션에 들어가는 배열, 딕셔너리, 셋
// Sorted, Map, Filter, Reduce등이 빌트인 되어 있다.

func getName(_ name : String) -> String{
    return "my name is \(name)"
}

var getNameClosure : (String) -> String

// 메소드인데 매개변수를 클로저로 받고 클로저에서 매개변수 값을 변경한다.
func sayHello(getName : (String) -> String, name : String ) -> String{
    return getName(name)
}

let resultHello = sayHello(getName: getName(_:), name : "yjw")

// Swift에서의 map의 정의
// 이런걸 고차함수라고 한다.
//@inlinable public func map<T>(_ transform: (Element) throws -> T) rethrows -> [T]



