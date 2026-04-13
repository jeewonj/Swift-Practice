//: [Previous](@previous)

/*:
 ## Step 4. 여러 개의 `init`

 공식문서를 보면 `init`이 여러 개예요.
```
 init(_ content: String)
 init(verbatim content: String)
 init(_ date: Date, style: Text.DateStyle)
 init(_ timerInterval: ClosedRange<Date>, ...)
```

 어떤 `init`을 골라야 할지 막막하다면,
 Step 2에서 배운 시그니처 읽는 법을 써보세요.
 파라미터 타입을 보면 어떤 재료를 넣어야 하는지 바로 알 수 있어요.

 - `String` 타입의 데이터를 가지고 있다 → `init(_ content: String)` 선택
 - `Date` 타입의 데이터를 가지고 있다 → `init(_ date: Date, style:)` 선택

 ---

 **`Date` 가 보인다면?**

 `Int`, `String` 처럼 `Date` 도 타입이에요.
 날짜와 시간을 담는 타입이에요.
```swift
 "Hello"    // String 타입의 값
 42         // Int 타입의 값
 Date.now   // Date 타입의 값 — "지금 이 순간"을 나타내요
```

 - Experiment:
 아래 두 가지 `init`을 직접 사용해보세요.
 */

import SwiftUI
import PlaygroundSupport

PlaygroundPage.current.setLiveView(
    VStack(spacing: 20) {
        // 실습 1. 문자열로 Text 만들기
        // TODO: 큰따옴표 안에 원하는 내용을 넣어보세요
        Text("현재시각")

        // 실습 2. 현재 시각을 보여주는 Text 만들기
        // Date.now 는 "지금 이 순간"을 나타내는 Date 타입의 값이에요.
        // .time 은 시각을 표시하는 형식이에요.

        // TODO: 아래 주석을 해제하고 실행해보세요
        Text(Date.now, style: .time)
    }
    .padding()
)

/*:
 * Callout(`init` 목록이 여러 개라면?):
 내가 가진 재료(데이터)에 맞는 `init`을 찾아서 쓰면 돼요.
 */

//: [Next](@next)
