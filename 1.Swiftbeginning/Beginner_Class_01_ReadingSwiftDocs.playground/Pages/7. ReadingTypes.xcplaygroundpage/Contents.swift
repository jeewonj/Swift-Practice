//: [Previous](@previous)

/*:
 ## Step 7. 타입 읽기 — 파라미터에 뭘 넣을까

 이제 함수를 부르는 법은 알았어요. 그런데 파라미터에 뭘 넣어야 할지 모르겠다면?

 공식문서에 적힌 **타입**이 힌트예요.
```
 func font(Font?) -> Text
 func kerning(CGFloat) -> Text
 func strikethrough(Bool, color: Color?) -> Text
```

 타입마다 넣을 수 있는 값이 정해져 있어요.

 - `Bool` : `true` / `false`
 - `Int` : `0`, `-1`, `23` (정수)
 - `CGFloat` : `1.5`, `0`, `-2.0` (실수)
 - `String` : `"Hello"`, `"안녕"`

 그런데 `Font`나 `Color`처럼 **점(`.`)을 찍어서 고르는 타입**도 있어요.  
```swift
 .font(.title)   // Font 타입
 .foregroundStyle(.red)  // Color 타입
```

 이런 타입을 **Enum(열거형)** 이라고 해요.  
 
 `Bool`이 `true` / `false` 두 가지 중 하나를 고르는 것처럼,  
 Enum은 **미리 정해진 선택지 중 하나를 고르는 타입**이에요.  

 - `Font` : `.title`, `.body`, `.caption` 중 하나. 
 - `Color` : `.red`, `.blue`, `.green` 중 하나. 

 선택지가 뭐가 있는지 모를 땐, `.`을 먼저 찍어보세요.  
 Xcode 자동완성이 사용 가능한 값들을 보여줘요.  

 - Experiment:
 아래 `<#빈칸#>` 자리에 알맞은 값을 넣어보세요.  
 타입을 보고 어떤 값을 넣어야 할지 추측해보세요.  
 */ 

import SwiftUI
import PlaygroundSupport

// NOTE: 각 파라미터 타입을 보고 알맞은 값을 넣어보세요   

PlaygroundPage.current.setLiveView(
    VStack(spacing: 20) {
        // TODO: Enum → .을 찍어 선택지를 확인해보세요
        Text("Font 타입")
            .font(.subheadline)  
        
        // TODO: CGFloat → 숫자를 넣어보세요
        Text("Kerning 타입")
            .kerning(.pi)    
        
        // TODO: Bool → true/false, Color → Enum
        Text("Strikethrough 타입")
            .strikethrough(.BooleanLiteralType(), color: .brown) 
    }
    .padding()
)

/*:
 * Callout(모르는 타입이 나왔을 때):
 `.`을 먼저 찍어보세요. Xcode 자동완성이 사용 가능한 값들을 보여줘요.  
 Enum인지 아닌지 몰라도 괜찮아요.  
 `.`을 찍었을 때 선택지가 나오면 Enum이에요.
 */

//: [Next](@next)
