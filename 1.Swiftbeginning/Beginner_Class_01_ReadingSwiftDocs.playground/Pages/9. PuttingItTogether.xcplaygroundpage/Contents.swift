//: [Previous](@previous)

/*:
 ## Step 9. 마무리 — 공식문서 한 줄 직접 해석하기

 이제 이 한 줄을 직접 해석해봐요.

 ```
 func strikethrough(Bool, pattern: Text.LineStyle.Pattern, color: Color?) -> Text
 ```

 한 번 같이 읽어볼게요.

 - `func` : 이건 함수예요
 - `strikethrough` : 취소선을 긋는 기능이에요
 - `Bool` : 취소선을 그을지 말지 (`true` / `false`)
 - `pattern: Text.LineStyle.Pattern` : 선의 모양 (점선, 실선 등)
 - `color: Color?` : 색깔 — `?`니까 없어도 돼요
 - `-> Text` : Text를 돌려줘요 → 체이닝 가능!

 - Experiment:
 배운 내용을 총동원해서 아래 빈칸을 완성해보세요.
 */

import SwiftUI
import PlaygroundSupport

PlaygroundPage.current.setLiveView(
    VStack(spacing: 20) {
        // TODO: 1. Text를 하나 만들어보세요
        Text("안녕하세요")
        
        // TODO: 2. 아래 modifier들을 이어 붙여보세요
        // 힌트: 반환 타입이 Text이면 계속 이어붙일 수 있어요
        // .을 입력하면 사용할 수 있는 함수(modifier)들을 확인할 수 있어요.
        Text("modifier 이어 붙이기")
            .font(.headline)
            .strikethrough(true, color: .green)
            .foregroundStyle(.black)
        
        // TODO: 3. 공식문서에서 아직 안 써본 modifier를 하나 찾아서 적용해보세요
        // https://developer.apple.com/documentation/swiftui/text
        Text("내가 찾아온 modifier")
            .frame(width: 50)
    }
    .padding()
)

/*:
 ## 공식문서를 읽는 순서 정리

 ```
 1. init 목록 보기      → "어떻게 만들까?"
 2. 반환 타입 보기       → "이어 붙일 수 있나?"
 3. 파라미터 타입 보기    → "뭘 넣어야 하나?"
 4. ? 확인하기         → "nil을 넣어도 되나?"
 ```

 이제 공식문서를 보면 겁먹지 않아도 돼요. 🎉
 */

//: [Previous](@previous)
