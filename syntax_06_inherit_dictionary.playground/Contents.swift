import UIKit

class Friend {
    var name : String
    
    init(_ name : String) {
        self.name = name
    }
    
    func sayHi() {
        print("반가워 나는 \(self.name)라고 해")
    }
}

// 상속해서 덮어씌운다
class BestFriend : Friend {
    // override 메소드로 부모의 메소드를 가져온다.
    override init(_ name: String) {
        super.init("베프 " + name)
        
    }
    
    override func sayHi(){
        super.sayHi()
    }
}

let friend01 = Friend("프렌드 01 ")

friend01.sayHi()

let friend02 = Friend("프렌트 02 ")

friend02.sayHi()

let bestFriend01 = BestFriend("프렌드 01")

bestFriend01.sayHi()

var dictionaly01 = ["best01" : "value 01",
                    "best02" : "value 02",]

let diction01 = dictionaly01["best01"]

print(diction01)

let diction02 = dictionaly01["best02"]

print(diction02)

let notExist = dictionaly01["best03", default: "item 없음"]

print(notExist)

dictionaly01["best03"] = "value 03"

print(dictionaly01["best03"])

dictionaly01.updateValue("updated value 02", forKey: "best02")

print(dictionaly01["best02"])

// 선언 방식
// dictionarly는 map과 거의 똑같다.
let emptyDictionary01: [String : Int] = [:]
let emptyDictionary02 : [String : Int] = [String : Int]()
let emptyDictionary03 : [String : Int] = Dictionary<String, Int>()

for item in dictionaly01 {
    print( "item :::"  , item.value)
}


