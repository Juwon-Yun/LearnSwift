import UIKit

// 레인지

for index in 0...5{
    print("index : \(index)")
}

print(" ::: ")

for index in 0..<5 where index % 2 == 0{
    print("index : \(index)")
}

print(" ::: ")

// 컬렉션 선언 방식이 2가지임
var ranInt : [Int] = []
var ranInt2 : [Int] = [Int]()

for _ in 0..<5{
    let ranNum = Int.random(in: 0...100)
    ranInt.append(ranNum)
}

print(ranInt)

print(" ::: ")

// 옵셔널 변수
// 값이 nil 일 수 있다.

var something : Int? = nil

if something == nil{
    something = 90
}

// Expression implicitly coerced from 'Int?' to 'Any'
print(something)


// 언랩핑이란? 감싸져 있는 것을 벗겨내는 것을 말한다.
//  -> 옵셔널 변수의 옵션을 없앤다.

print(" ::: ")

if let otherthing = something {
    print(otherthing)
} else {
    print("value is nil")
}

print(" ::: ")

something = nil

// something 의 값이 비어있다면 기본값을 설정할 수 있다.
let anything = something ?? 10;

print(anything)

print(" ::: ")

func unwrap(param : Int?){
    // 값이 없다면 리턴한다.
    guard let ynWrappedParam = param else {
        return
    }
    
    // 위에 같은 표현.
    guard (param == nil )else {
        return
    }
    
    print("인수의 값은 \(param)입니다.")
    
    
}

unwrap(param: nil)

print(" ::: ")

unwrap(param: 2)

print(" ::: ")
