import UIKit

enum MismatchError : Error{
    case nameMismatch
    case numberMismatch
}

func guessSomeoneName(name input : String) throws {
    print("guessSomeoneName() was called")
    
    if input != "jwyun" {
        print("틀렸다.")
        throw MismatchError.nameMismatch
    }
    
    print("맞췄다.")
}

// 에러가 던져져도 에러 처리를 하지 않겠다.
try? guessSomeoneName(name : "jwyun")

// do block
do{
    try guessSomeoneName(name : "")
}catch{
    print("잡은 에러 : \(error)")
}

// 에러가 무조건 없을 것이다.
// try! guessSomeoneName(name : "")

print(" --- ::: ---")

// option + Cmd + /로 주석 바로 생성 가능

///  번호를 맞춘다.
/// - Parameter input: 사용자 숫자 입력
/// - Returns: 맞췄는지 여부
func guessNumber(number input : Int) throws -> Bool  {
    print("guessNumber() was called")
    
    if input != 10 {
        print("숫자 틀렸다.")
        throw MismatchError.numberMismatch
    }
    
    print("숫자 맞췄다.")
    return true
}

do{
    try guessNumber(number : 10)
}catch{
    print("잡은 에러 : \(error)")
}

do {
    // receiveValue에 값이 담기지 않고 바로 catch로 넘어간다.
    let receiveValue = try guessNumber(number: 9)
} catch {
    print("잡은 에러 : \(error)")
}
