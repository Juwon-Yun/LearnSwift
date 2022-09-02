import UIKit

enum FriendType {
    case normal, best
}

struct Friend {
    var name : String
    var type : FriendType
}


var friendList = [
    Friend(name : "철수01", type: .normal),
    Friend(name : "철수02", type: .best),
    Friend(name : "철수03", type: .normal),
    Friend(name : "철수04", type: .best),
]

// 들어온 키가 같으면 따로 분류한다.
//let groupFriends = Dictionary(grouping: friendList, by: {$0.type})

// 여러가지 형태로 그룹핑이 가능하다
// Date나 Data내용으로 그룹핑한다.
let groupFriends = Dictionary(grouping: friendList, by: {
    (friend) -> FriendType in
    return friend.type
})



print(groupFriends[.normal])
print(groupFriends[.best])
