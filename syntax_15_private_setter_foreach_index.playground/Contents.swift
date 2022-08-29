import UIKit

// 스트럭트는 생성자가 내장되어있다.
struct MyPet {
    var title : String = "타이틀 없음"
    
    private (set) var name : String = "이름 없음"
    
    mutating func setName(to newName : String){
        self.name = newName
    }
}

var myPet = MyPet()

myPet.name
myPet.title

myPet.title = "바뀐 타이틀"
myPet.title

// error: cannot assign to property: 'name' setter is inaccessible
// 할당할 수 없는 setter가 된다.
//myPet.name = "바뀐 이름"

myPet.setName(to: "바뀐 이름")

myPet.name

// Alamofire에서도 주로 prevate (set)을 사용한다.


// foreach index

let array : [String] = ["철", "수", "영", "희", "마"]

var freindWithIndex : [String] = []

for (index, element) in array.enumerated() {
    print("index: \(index), item : \(element)")
    freindWithIndex.append("\(index)번째 \(element)")
}

print(freindWithIndex)
