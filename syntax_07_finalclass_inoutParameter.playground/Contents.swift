import UIKit

// final 키워드는 다른 클래스가 상속받지 못한다.
final class Friend{
    var name : String
    init(name : String){
        self.name = name
    }
}

// 상속받지 못한다는 에러 생김
//class BestFriend : Friend {
//    var name : String
//    init(name : String ){
//        self.name = name
//    }
//}

func sayName(_ name : String){
    print("unNamed Parameter \(name)")
}

sayName("매개변수명을 안써도된다")

// 매개변수는 기본이 let으로 선언되어 있어 inout 키워드로 풀어줄 수 있다.
func sayHi(_ name : inout String){
    name = " inout 키워드를 통해 값을 변경함 " + name
    print("unNamed Parameter \(name)")
}

var inoutValue = "안녕 "

sayHi(&inoutValue)

// inout을 쓸 때는 변수에 담아서 & 포인터 연산자를 붙여서 수정한다.
