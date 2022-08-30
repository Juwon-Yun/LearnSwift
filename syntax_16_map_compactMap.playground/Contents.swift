import UIKit

let friendArray : [String] = ["철수1","철수2","철수3","철수4","철수5","철수6"]

let friendMap = friendArray.map{ element in
    return "내 친구 아니다 -> " + element
}

let numbers : [Int] = [22, 3, 44, 55, 119]

let numbersMap :[String] = numbers.map{
    return "숫자 문자열 \($0)"
}

let dictionarly = ["고양이" : "야옹" , "강아지" : "멍멍"]

let dictionarlyMap : [String] = dictionarly.map{
    return "\($0)의 울음소리는 \($1) 이다."
}

let numberSet : Set<Int> = [1,1,1,2,3,4,5,2,3,4,5]

let numberSetMap : [String] = numberSet.map{
    return "\($0 * 10) 입니다."
}


let optionalArray : [String?] = ["철2", nil,"철1","철2", nil,"철3"]

let optionalArrayMap = optionalArray.compactMap{ $0}.map{
    return "옵셔널 문자열 \($0)"
}

print(optionalArrayMap) // ["옵셔널 문자열 철2", "옵셔널 문자열 철1", "옵셔널 문자열 철2", "옵셔널 문자열 철3"]
