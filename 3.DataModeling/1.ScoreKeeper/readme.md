#  **[Data Modeling] 1. ScoreKeeper**
---
## **배운 내용**
* `Foundation` 프레임워크(Framework)를 활용한 데이터 모델링
    * `Foundation`: Swift 표준 라이브러리를 확장하여 데이터 관리, 네트워크, 날짜 처리 등 앱의 중추 기능을 제공하는 프레임워크. 실제 앱을 만드는 데 꼭 필요한 데이터 관리, 네트워크 통신, 날짜 처리 등의 핵심 기능을 제공
    * 주요 역할: 운영체제의 자원을 활용하거나 복잡한 데이터를 다룰 때 사용(데이터 처리, 날짜 및 시간(`Date`,`Calendar`,`TimeZone`), 네트워크(`URL`,`URLSession`), 파일 시스템`FileManager`(생성, 읽기, 쓰기, 삭제), 사용자 설정 저장(`UserDefaults` 등)
    
* `Identifiable` 프로토콜 + `UUID`
    * `Identifiable`: '이 타입의 각 인스턴스의 고유한 ID를 가짐'을 보장하는 프로토콜. 해당 타입이 'id'프로퍼티를 통해 구분됨을 SwiftUI에 알림. SwiftUI의 컬렉션 뷰(`List`, `ForEach`)에서 각 요소를 식별하는 데 필수적임.
    * `UUID` (Universally Unique Identifier): 각 인스턴스에 고유한 ID 부여. 같은 이름의 데이터도 구분 가능.
    * `id`는 프로퍼티(property), `UUID`는 데이터 타입(type)
       
* `Grid{}`와 `GridRow{}`를 활용한 레이아웃 구성
    * 표 형태의 정교한 정렬이 필요할 때 사용
    ```swift
    Grid {
        GridRow {
    ```

* `Stepper()` + `.labesHidden()`
    * `Stepper()` 구조
    ```swift
    Stepper("\(player.score)", value: $players[index].score)
    ```
    -> **레이블이 너비 전체를 차지해서 점수칸이 넓어짐**
    * 해결책: `Text` + `.labelsHidden()` 같이 쓰기
    ```swift
    Text("\(player.score)")        // 점수를 별도 Text로 표시
    Stepper("\(player.score)", value: $players[index].score)
        .labelsHidden()            // Stepper의 레이블은 숨김
    ```
    ->`Text`는 자기 내용만큼만 공간을 차지하기 때문에 점수칸이 숫자 크기만큼 좁아짐
    * `.labelHidden()`: `Stepper` 안의 레이블을 화면에서 숨기는 수식어
    ```swift
    // .labelsHidden() 없을 때
    [  10        −  +  ]
    ↑ 레이블이 공간 차지

    // .labelsHidden() 있을 때
    [−  +]
    ↑ 버튼만 남음
    ```

## **preview**


## **tutorial link**
[Apple Developer Tutorial](https://developer.apple.com/tutorials/develop-in-swift/add-functionality-with-swift-testing)
