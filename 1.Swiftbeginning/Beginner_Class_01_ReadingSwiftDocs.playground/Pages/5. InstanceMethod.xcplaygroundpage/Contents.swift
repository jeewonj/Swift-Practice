//: [Previous](@previous)

/*:
 
 ![인스턴스메서드](image_02.png)
 
 ## Step 5. Instance Method — 점(.)의 의미

 `init`으로 Text를 만들고 나면, 공식문서에서 이런 목록이 보여요.
```swift
 func bold() -> Text
 func italic(Bool) -> Text
 func foregroundStyle<S>(S) -> Text
```

 이 함수들은 **점(`.`)을 찍어서 호출**해요.
```swift
 Text("안녕하세요").bold()
 Text("안녕하세요").italic()
```

 점(`.`)은 **"이 Text가 가지고 있는 기능"** 이라는 표시예요.

 스마트폰에 비유하면, `.bold()`는 스마트폰 안에 내장된 앱 같은 거예요.

 `phone.camera()`  → 이 폰의 카메라 앱 실행

 `Text("안녕").bold()` → 이 Text의 bold 기능 실행

 - Experiment:
 아래 `TODO`에 원하는 기능을 적용해보세요.  
 점(`.`)을 찍은 뒤 자동완성을 확인해보세요.    
 힌트: `.bold()` `.italic()` `.underline()`
 */

import SwiftUI
import PlaygroundSupport

PlaygroundPage.current.setLiveView(
    VStack(spacing: 16) {
        Text("원본")
            .font(.caption)
            .foregroundStyle(.secondary)
        Text("나의 첫 번째 Text")

        Divider()

        Text("내가 적용한 스타일")
            .font(.caption)
            .foregroundStyle(.secondary)
        
        // TODO: 점(.)을 찍고 원하는 기능을 적용해보세요
        Text("나의 첫 번째 Text")
            .bold()
            .italic()
            .textScale(Text.Scale.secondary)
    }
    .padding()
)

/*:
 * Callout(Instance Method란 뭘까?):
 **특정 객체(instance)가 가지고 있는 함수**를 **Instance Method**라고 해요.  
 점(`.`)을 찍어서 호출하고, 그 객체에만 적용돼요.  
 세상에 많은 Instance Method 중,   
 SwiftUI View에 적용하는 Instance Method를 **View Modifier**라고 불러요.
*/

/*:
 * Callout(Instance? 너무 어려워요.):
객체와 인스턴스라는 말을 너무 어렵게 생각하지 마세요!  
여러분는 이미 Text("안녕")라는 객체를 만들고 있었어요 :)
*/

//: [Next](@next)
