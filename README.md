## this repo is Learning for Swift

Based on swift5

<details>
<summary> basic swift </summary>

```swift
var 변수, 재할당 가능, 재선언 불가능

let 상수, 재할당 불가능, 재선언 불가능

enum에 getter 설정 가능, 콜백 함수 선언 가능, 조건문도 가능함

arr: [Int] = [], arr: [Int] = [Int]() => 배열 선언방식 2가지 

옵셔널 변수 => flutter 의 nullable 변수와 비슷하다, 하지만 null이 아닌 nil인 상태이다.

옵셔널 변수를 guard 키워드를 사용해 유효성 검사 또는 nil을 벗길 수 있다.

함수의 매개변수 사용법 : named parameter, parameter, ignore parameter

struct 제네릭 : 제네릭 타입을 정하지 않으면 자동으로 정한다.

closure 사용법 3가지 

1. var variable : T = {return T}()

2. var variable : T {return T}

3. 추상 : 매개변수 타입 -> 리턴 타입, 구현 : 매개변수 타입 -> 리턴 타입 
    let variable : (T) -> T = { (param : T) -> T in return T }
    let variable : (T) -> Void = { (param : T) in  }
    
매개변수로 클로저를 갖는 함수
func funName( closureName : (T) -> T){
    closure()
}

optional closure parameter
func funName( closureName : ((T)->T)? = nil){
    closure()
}


```

</details>
