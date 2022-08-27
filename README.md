### this repo is Learning for Swift

Based on swift5

<details>
<summary> basic swift </summary>

```swift
1. var 변수, 재할당 가능, 재선언 불가능

2. let 상수, 재할당 불가능, 재선언 불가능

3. enum에 getter 설정 가능, 콜백 함수 선언 가능, 조건문도 가능함

4. arr: [Int] = [], arr: [Int] = [Int]() => 배열 선언방식 2가지 

5. 옵셔널 변수 => flutter 의 nullable 변수와 비슷하다, 하지만 null이 아닌 nil인 상태이다.
   옵셔널 변수를 guard 키워드를 사용해 유효성 검사 또는 nil을 벗길 수 있다.

6. 함수의 매개변수 사용법 : named parameter, parameter, ignore parameter

7. struct 제네릭 : 제네릭 타입을 정하지 않으면 자동으로 정한다?.

8. closure 사용법 3가지 

    1. var variable : T = {return T}()

    2. var variable : T {return T}

    3. 추상 : 매개변수 타입 -> 리턴 타입, 구현 : 매개변수 타입 -> 리턴 타입 
        let variable : (T) -> T = { (param : T) -> T in return T }
        let variable : (T) -> Void = { (param : T) in  }
    
9. 매개변수로 클로저를 갖는 함수
    1. closure parameter
    func funName( closureName : (T) -> T){
        closureName()
    }

    2. optional closure parameter
    func funName( closureName : ((T)->T)? = nil){
        closureName()
    }

10. 생성자와 해체자
    init 메소드로 생성자를 만들 수 있다.
    deinit 메소드로 해체자를 만들 수 있다.
    두 메소드에서 메모리에 적재되는 것과 사라지는 것을 알 수 있다.
    
11. 상속
    class 키워드를 사용해 상속을 구현한다.
    
    class Animal {}
    class dog : Animal {}
    
12. Dictionary
    Collection 타입이다. Map과 유사함 인덱스가 없다. key, value만 있음.
    let dictionarly : [Key<T> : Value<T>] = [:]
    let dictionarly : [Key<T> : Value<T>] = [Key<T> : Value<T>]()
    let dictionarly : [Key<T> : Value<T>] = Dictionary<key<T>, Value<T>>()
    
    요소의 .key, .value로 값에 접근할 수 있다.
    .updateValue(updateValue, forKey: key)로 지정한 키값의 값을 변경할 수 있다. 
    
13. Final Class 키워드
    Final 키워드를 사용해 클래스를 선언하면 다른 클래스에서 상속받지 못한다.
    final class Animal {} 
    
14. method parameter inout 키워드
    Swift의 메소드 매개변수는 기본이 let으로 설정되어 있어, 타입 앞에 inout 키워드를 추가하면 값을 변경할 수 있다.
    
    func some(_ name : String) {} 
    func some(_ name : inout String) {
        name = "변경함" + name
    }
   
15. Error, enum Error
    enum으로 Error 종류를 선언해 꺼내다 사용할 수 있다.
    
    // 에러가 발생할 인스턴스 앞에 try 키워드를 붙여 에러 처리를 할 수 있다.
    try occurError()
    
    // try! -> 에러가 무조건 없을 거라고 컴파일러한테 말함.
    try! occurError()
    
    // try? -> 에러가 던져져도 에러 처리를 하지 않겠다.
    try? occurError()
    
    // try 키워드를 사용하는 인스턴스틑 do catch 문법으로 감쌀 수 있다.
    do{
        try occurError()
    } catch {
        print(error) // -> 이때 error 변수는 선언안해도 쓸 수 있음. 기본임
    }
    
16. Struct Mutating
    
    Class 키워드가 아닌 Struct 내부에서 멤버 변수 값에 변경이 필요할 때 사용함.
    
    func some(){}
    
    mutating func some(){}
    
    mutating 키워드로 멤버변수 값을 변경할 수 있다.
    
17. Extends Protocol
    선언된 protocol을 확장한다.
    Dart의 Extension on 키워드와 동일하다.
    
    protocol some{}
    extension some{
        func extendFunc() -> Void{}
    }
    
18. associatedtype Protocol
    프로토콜의 타일을 추상화 할 수 있다.
    
    protocol some{
        associatedtype T
        var something : [T] {get set}
        mutating func handleSomething(_ param : T)
    }
    
    extension some {
        mutating func handleSomething(_ param : T){
            self.something.append(param)
        }
    }
    
    enum associatedtypeEnum {
        case enum1, enum2
    }
    
    struct someInstance : some {
        var list : [associatedtypeEnum] = []
    
        mutating func handleSomething(_ param : associatedtypeEnum){
            self.something.append(param)
        }
    }
    
19. typeAlias
    미리 선언한 클로저나 프로토콜에 대해 약어를 정의한다.
    클로저와 프로토콜을 사용하면 코드가 길어지거나 가독성이 떨어지는데 
    약어를 설정해 가독성을 증가시켜줄 수 있다.
    
    typealias someAlias = protocol01 & protocol02
    
    struct someStruct : protocol01 & protocol02 {} 또는 
    struct someStruct : someAlias {}

```

</details>


[Swift Doc](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
