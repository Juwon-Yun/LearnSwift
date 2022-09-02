import UIKit
import Combine

// Combine (https://developer.apple.com/documentation/combine)
// 내장 기본 기능 Timer : NotificationCenter, URLSession 그리고 Key-Value 관측이 가능하다.
// Rx와 같은 반응형 프로그래밍을 위한 키워드이다.
// 똑같이 비동기 이벤트를 처리한다.

// combine Rx의 Apple 공식 메소드 버전이다.
// Rx와의 차이점이 존재한다.

// 안드로이드와 비교 설명함.

// Rx와 다른점
// Publisher
// - Rx : 데이터를 보낸다.
// - Combine : 데이터와 에러 타입을 같이 보낸다. -> Never로 설정하면 에러를 보내지 않는다.

// Subscriber
// Publisher와 Subscribar가 연결되어 있다.

// publisher 생성
// Rx에서의 Observerable, Never면 에러가 들어오지 않는다. <Output, Failure> 타입이 최상위임.
var pubIntArray : Publishers.Sequence<[Int], Never> = [1,2,3].publisher

pubIntArray.sink(receiveCompletion: { completion in
    switch completion {
    case .finished :
        print("완료")
        // Never라서 에러는 절떄 안들어오지만 예시로 적었다.
    case .failure(let error) :
        print("실패 error ::: \(error)")
    }
}, receiveValue: { receivedValue in
    print("값을 받았어요 \(receivedValue)")
})


