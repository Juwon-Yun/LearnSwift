import UIKit

// ch 1 : if 문
var isDark : Bool = false

if (isDark == true){
    print("다크모드 입니다.")
} else {
    print("다크모드 아님.")
}


if isDark {
    print("다크모드 입니다.")
} else {
    print("다크모드 아님.")
}

// var title :String = isDark == true ? "다크" : "라이트"

var title :String = isDark ? "다크" : "라이트"

print("title \(title)")


// ch 2 : 콜렉션
var arr  : [Int] = [0, 1,2,3,4,5]

for item in arr {
    print("item : \(item)")
}

for item in arr where item % 2 == 0{
    print("item : \(item)")
}


// ch 3 : enum
enum School{
    case elementary
    case middle
    case hight
    case ele, mid, hig
}

enum Grade : Int{
    case first = 1
    case second = 2
    case third = 3
}

enum SchoolDetail{
    case elementary(name : String)
    case middle(name : String)
    case high(name : String)
    
    func get() -> String{
        switch self{
            case .elementary(let name):
                return name
            case let .middle(name):
                return name
            case .high(let name):
                return name
        }
    }
}

// 변수
// var

// 상수
// let

let mySchool = School.hight
print("mySchool : ", mySchool)

let myGrade = Grade.second.rawValue
print("myGrade : \(myGrade)")

let mySchoolDetail = SchoolDetail.elementary(name: "중학교")

print(mySchoolDetail.get())

