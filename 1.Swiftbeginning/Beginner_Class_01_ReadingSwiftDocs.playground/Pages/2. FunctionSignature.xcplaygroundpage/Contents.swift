//: [Previous](@previous)

/*:
 ## Step 2. 함수 시그니처 읽는 법

 공식문서에서 함수를 보면 이런 형태예요.
```
 func bold() -> Text
 func kerning(CGFloat) -> Text
 func strikethrough(Bool, color: Color?) -> Text
```
 
 이걸 읽는 공식이 있어요.
```
func  이름  (파라미터: 타입)  ->  반환타입
  ①    ②      ③     ④    ⑤     ⑥
```

 - ① `func` : "나는 함수야" 라는 선언
 - ② 이름 : 이 함수가 하는 일
 - ③ 파라미터 : 기계에 넣는 재료 이름
 - ④ 타입 : 재료의 종류
 - ⑤ `->` : "이걸 돌려줄게"
 - ⑥ 반환타입 : 결과물의 종류

 - Experiment:
 아래 세 가지 시그니처를 읽고, 주석의 빈칸을 채워보세요.
 */

// ① func add(_ a: Int, _ b: Int) -> Int
// → 이름:       add
// → 재료:       a, b 두 개
// → 재료 타입:  a,b 모두 Int (정수형 ex. 0, 1, 2, 3, ...)
// → 반환 타입:  Int (정수형 ex. 0, 1, 2, 3, ...)

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

// TODO: 아래의 ???를 작성해보세요.
// ② func bold() -> Text
// → 이름:       bold
// → 재료:       없음
// → 반환 타입:   Text

// TODO: 아래의 ???를 작성해보세요
// ③ func strikethrough(Bool, pattern: Text.LineStyle.Pattern, color: Color?) -> Text
// → 이름:       strikethrough
// → 재료:       Bool, pattern, color
// → 반환 타입:   Text

let sum = add(3, 5)
print(sum)

/*:
 * Callout(파라미터가 없다면?):
 재료가 필요 없는 함수도 있어요.
 그럴 때는 괄호 안이 비어 있어요.
```swift
 func bold() -> Text    // 재료 없이 호출
```
 */

/*:
 * Callout(반환 타입이 없다면?):
 결과물이 없는 함수도 있어요.
 그럴 때는 `-> Void` 또는 `->` 자체가 생략돼요.
```swift
 func sayHello() {   // -> Void 가 생략된 것
     print("Hello!")
 }
```
 */

//: [Next](@next)
