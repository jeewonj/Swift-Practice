//: [Previous](@previous)

/*:
 ## Step 6. Method Chaining — 왜 이어 붙일 수 있나

 SwiftUI 코드를 보면 점(`.`)이 계속 이어지는 걸 볼 수 있어요.

 ```swift
 Text("Hello")
     .bold()
     .italic()
     .foregroundStyle(.blue)
 ```

 왜 이렇게 끝없이 이어 붙일 수 있을까요?  
 답은 반환 타입에 있어요.

 ```
 func bold() -> Text       ← Text를 돌려줘요
 func italic(Bool) -> Text ← Text를 돌려줘요
 ```

 `.bold()`를 부르면 → bold가 적용된 **새 Text**가 나와요.  
 그 Text에 또 `.italic()`을 부를 수 있는 거예요.

 커피 주문서에 비유하면:
 ```
 아메리카노()           // 기본 주문서 작성
    .샷추가()          // 샷 추가된 새 주문서
    .시럽추가(.바닐라)   // 시럽 추가된 새 주문서
    .온도(.뜨겁게)      // 최종 주문서 완성!
 ```

 - Experiment:
 아래 `practiceText`에 modifier를 3개 이상 이어 붙여보세요.
 */

import SwiftUI
import PlaygroundSupport

PlaygroundPage.current.setLiveView(
    VStack(spacing: 20) {
        // NOTE: 반환 타입이 Text이기 때문에 계속 이어붙일 수 있어요
        Text("Hello, Chaining!")
            .bold()
            .italic()
            .foregroundStyle(.blue)
        // TODO: 아래 Text에 원하는 modifier를 3개 이상 이어 붙여보세요
        Text("Help me")
            .font(.largeTitle)
            .fontWeight(.black)
            .bold()
            .italic()
            .foregroundStyle(.red)
            
    }
    .padding()
)

/*:
 * Callout(체이닝이 안 될 때는?):
 반환 타입이 `Void` 인 함수는 체이닝할 수 없어요.
 - 공식문서에서 `-> Text` 또는 `-> some View` 가 보이면 이어붙일 수 있고,
 - 반환 타입이 없거나 `-> Void` 이면 거기서 끝이에요.
 */

//: [Next](@next)
