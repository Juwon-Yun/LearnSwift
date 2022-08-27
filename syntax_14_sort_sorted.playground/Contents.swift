import UIKit

// 고차함수인 sort와 sorted를 다룬다.
// 내림차순(asc), 오름차순(des)

var someArray = [3,5,88, 4,21,16]

// sorted는 정렬을하고 새로운 배열을 반환한다.
var ascendingArray = someArray.sorted()

// sort는 원본 배열을 정렬시킨다.
someArray.sort()

// descending
var descendingArray = someArray.sorted(by: >)

someArray.sort(by: >)
