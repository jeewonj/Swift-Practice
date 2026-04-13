//: [Previous](@previous)

/*:
 ## Step 1. 함수란 무엇인가

 함수는 **재료를 넣으면 결과가 나오는 기계**예요.

 커피 머신을 생각해볼게요.  
 원두와 물을 넣으면 → 커피가 나와요.  
 재료가 달라지면 → 결과도 달라져요.  
 코드에서도 똑같아요.  

 ```swift
 func 기계이름(재료이름: 재료종류) -> 결과종류 {
     // 기계가 하는 일
 }
 ```

 아래 함수를 보면:
 - `name` 이라는 재료를 받아요
 - 그 재료는 `String` (문자열) 타입이어야 해요
 - `String` 타입의 결과물을 돌려줘요

 - Experiment:
 아래 `greet` 함수를 호출해서 `result2`에 담아보세요.   
 name에는 원하는 이름을 넣어보세요.
 */

func greet(name: String) -> String {
    return "안녕하세요, \(name)!"
}

let result1 = greet(name: "Lumi")
print(result1)

// TODO: greet 함수를 사용해보세요.
// 작성 후에 "내 코드 실행"을 눌러보세요.
let result2 = greet(name: "Heen")
print(result2)

/*:
 * Callout(함수란 뭘까?):
 재료(파라미터)를 받아서 결과(반환값)를 돌려주는 코드 묶음이에요.  
 같은 기계에 다른 재료를 넣으면 다른 결과가 나와요.
 */

//: [Next](@next)
