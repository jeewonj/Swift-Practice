//: [Previous](@previous)

/*:
 ## Step 8. Optional — `?`가 붙으면 뭐가 다를까

 공식문서를 보다 보면 타입 뒤에 `?`가 붙은 게 자주 보여요.

 ```
 func font(Font?) -> Text
 func strikethrough(Bool, color: Color?) -> Text
 func underline(Bool, color: Color?) -> Text
 ```

 `?`는 **"없어도 괜찮아요"** 라는 뜻이에요.

 레스토랑 주문서에 비유하면:
 - `color: Color` → 색깔은 **반드시** 골라야 해요
 - `color: Color?` → 색깔을 **골라도 되고, 안 골라도 돼요**

 안 고를 때는 `nil`을 넣어요.

 ```swift
 .strikethrough(true, color: .red)   // 색깔 있는 취소선
 .strikethrough(true, color: nil)    // 색깔 없는 취소선 (기본값 사용)
 .strikethrough(true)                // color 파라미터 자체를 생략해도 돼요
 ```

 - Experiment:
 아래 세 가지 방법으로 취소선을 만들어보고 차이를 확인해보세요.
 */

import SwiftUI
import PlaygroundSupport 

PlaygroundPage.current.setLiveView(
    VStack(spacing: 20) {
        // 색깔 있는 취소선
        Text("색깔 있는 취소선")
            .strikethrough(true, color: .red)
        
        // nil로 색깔 없음 명시
        Text("nil로 색깔 없음")
            .strikethrough(true, color: nil)
        
        // color 파라미터 생략
        Text("color 파라미터 생략")
           .strikethrough(true)
        
        // TODO: underline도 같은 방식으로 써보세요
        // 참고: func underline(_ isActive: Bool, color: Color?) -> Text
        // 참고: 두번째 파라미터인 color는 Color?인 옵셔널 타입이에요.
        Text("색깔 있는 밑줄")
            .underline(true, color: .cyan)
        Text("nil로 색깔 없음")
            .underline(true, color: nil)
        Text("color 파라미터 생략")
            .underline(true)
        //Text("hello")
        
        // font 파라미터도 Font? 타입이에요. nil을 넣으면 어떻게 될까요?
         Text("nil font")
            .font(nil)
    }
    .padding()
)

/*:
 * Callout(Optional이란 뭘까?):
 타입 뒤에 `?`가 붙으면 **Optional** 타입이에요.  
 값이 있을 수도 있고, `nil`(없음)일 수도 있다는 뜻이에요.  
 파라미터가 Optional이면 생략하거나 `nil`을 전달할 수 있어요.  
 */

//: [Next](@next)
