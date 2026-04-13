//: [Previous](@previous)

/*:
 ## Step 3. `init` — Text를 만드는 함수

 공식문서 맨 위에는 항상 `init` 목록이 있어요.
```
 init(_ content: String)
```

 `init`은 무언가를 **처음 만들 때** 쓰는 특별한 함수예요.

 그런데 한 가지 특이한 점이 있어요.
 일반 함수는 이름을 그대로 써서 호출하지만,
 `init`은 **타입 이름으로 호출**해요.
```swift
 // 일반 함수 호출
 add(1, 2)

 // init 호출 — init 대신 타입 이름(Text)을 써요
 Text("Hello")

 // 사실 이 둘은 같은 말이에요
 Text("Hello")
 Text.init("Hello")
```

 즉, `Text("Hello")`는 `Text`의 `init`을 호출한 것이에요.   

  여기서 `Text`는 **타입**이에요.  
  `Int`, `String` 처럼, SwiftUI에서 텍스트를 표시하는 뷰의 종류예요. (이해하지않아도 괜찮아요). 

  Swift에서 `init`을 부를 때는 항상 이렇게 **타입 이름**으로 불러요.  
 
 ---
 
 **`_` 가 보인다면?**

 Step 2에서 파라미터 이름을 배웠죠?
 `_` 는 "함수를 호출할 때 파라미터 이름을 생략해도 된다"는 표시예요.
```swift
 init(_ content: String)
 Text("Hello")             // _ 이므로 파라미터 이름(Content)없이 값만 바로 넣어요
```

 ---

 - Experiment:
 아래에 원하는 내용으로 `Text`를 하나 만들어보세요.
 */

import SwiftUI
import PlaygroundSupport

PlaygroundPage.current.setLiveView(
    VStack(spacing: 20) {
        // 이미 만들어진 예시
        Text("Hello, SwiftUI!")

        // TODO: 아래에 원하는 내용으로 Text를 만들어보세요
        // "" 안의 내용을 자유롭게 바꿔보세요
        Text("안녕하세요")
    }
    .padding()
)

/*:
 * Callout(`init`이란 뭘까?):
 `init`은 객체를 **처음 만들 때** 호출되는 특별한 함수예요.  
 호출할 때는 `init` 대신 타입 이름을 써요.  
 `Text("Hello")`는 사실 `Text.init("Hello")`를 줄여 쓴 것이에요.
 */

//: [Next](@next)
