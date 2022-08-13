import UIKit

// 매개변수로서 클로저

// 클로저는 메소드로 이해하면 편하다.

// completion이라는 클로저를 매개변수로 가지는 함수다.
func sayHi(completion : () -> Void ){
    print("sayHi() Called")
    sleep(2) // 2sec delay
    // completion 클로저 실행하기
    completion()
}

// 메소드 호출부에서 이벤트종료를 알 수 있다.
sayHi(completion : {
    print("2초가 지났습니다. 1")
})

sayHi(){
    print("2초가 지났습니다. 2")
}

sayHi{
    print("2초가 지났습니다. 3")
}

// 매개변수로서 데이터를 반환하는 클로저
func sayHiWithName(completion: (String) -> Void){
    print("sayHiWithName() Called")
    sleep(2)
    
    // 클로저를 싱행과 동시에 데이터를 반환
    completion("제 이름은 입니다.")
}

sayHiWithName(completion: {(comment : String) in
    print("2초 지나고 commnet : \(comment) 1")
})

sayHiWithName{ comment in
    print("2초 지나고 commnet : \(comment) 2")
}

sayHiWithName{
    // 첫 번쨰 매개변수를 의미한다. $0, $1, $2 ...
    print("2초 지나고 commnet 3", $0)
}
    
// 매개변수를 2개 만환하는 클로저 함수
func sayHiWithFullName(completion: (String, String) -> Void){
    print("sayHiWithFullName() Called")
    sleep(2)
    
    // 클로저를 싱행과 동시에 데이터를 반환
    completion("첫 번쨰 completion", "두 번째 completion")
}

sayHiWithFullName {first, second in
    print("호출 \(first),\(second)")
}

sayHiWithFullName{
    print("호출 \($0), \($1)")
}

// optional 클로저도 설정할 수 있다.
// 매개변수에 값을 안넣으면 안나옴
func sayHiOptional(completion : (()->Void)? = nil){
    print("sayHiOptional() Called")
    sleep(2)
    
    // 클로저를 싱행과 동시에 데이터를 반환
    completion?()
}

sayHiOptional()

sayHiOptional( completion : {
    print("2초가 지났다.")
})

// 클로저 (Int) -> String를 함수로 표현하면 아래랑 같다.
func transform(num : Int) -> String {
    return "숫자 : \(num)"
}

var numbers : [Int] = [0, 1, 2, 3, 4, 5]

var transNumbers = numbers.map { el in
    el + 1
}

var trans02 = numbers.map {
    return "숫자 : \($0)"
}

