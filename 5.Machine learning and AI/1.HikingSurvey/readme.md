# **[Machine Learning and AI] 1. HikingSurvey**
---
## **배운 내용**
1.** Natural Language Framework + NLTagger **
```swift
import Foundation
import NaturalLanguage


class Scorer {
    let tagger = NLTagger(tagSchemes: [.sentimentScore])
}
```

2.** TextField로 입력한 내용 추가하기 **
```swift
@State private var responseText = "" // 변수 설정
```
```swift
TextField("What do you think about hiking?", text: $responseText)
    .textFieldStyle(.roundedBorder)
    .lineLimit(5)
Button("Done"){
    guard !responseText.isEmpty else {return} //responseText 가 비어있지 않은지 확인
    saveResponse(text: responseText)
    responseText = "" //Clear the text entry field once a response has been saved.
```
3.** `@FocusFState`**: 현재 어떤 입력 뷰(TextField 등)가 선택(포커스)되어 있는지 상태로 관리하는 도구/ 지금 키보드가 어떤 TextField에 붙어 있는지 추적하는 변수
    * 왜 필요한가: 기본적으로 TextField는 사용자가 탭하면 자동으로 키보드가 올라오고 포커스가 생김. 그러나 버튼 누르면 키보드 내려야 함, 입력 끝나면 포커스 해제하고 싶음, 특정 조건에서 자동으로 포커스 주고 싶음 👉 이걸 제어하려면 `@FocusState`가 필요함
    
    
```swift
@FocusState private var textFieldIsFocused: Bool
```
```swift
TextField("What do you think about hiking?", text: $responseText, axis: .vertical)
    .textFieldStyle(.roundedBorder)
    .lineLimit(5)
Button("Done") {
    guard !responseText.isEmpty else { return }
    saveResponse(text: responseText)
    responseText = ""
    textFieldIsFocused = false //키보드 내려감
}
```


**cf. 자동 포커스 주기**
```swift
.onAppear {
    textFieldIsFocused = true //화면 뜨자마자 키보드 올라옴
}
```

4.** Swift Chart**
```swift
struct ChartView: View {
    var responses: [Response]
    
    init(responses: [Response]) {                                   //1. 데이터 초기화: 받아온 response 배열을 score 기준 오름차순으로 정렬
        self.responses = responses.sorted{$0.score < $1.score}
    }


    var body: some View {
        Chart(responses) { response in                                          //2. 차트 본체
            SectorMark(angle: .value("Type", 1),innerRadius: .ratio(0.75))
            //angle: .value("Type", 1)은 모든 항목을 동일한 크기(1)로 나눔 → 개수 비례 분할
            //innerRadius: 안쪽 빈 공간 비율 → 도넛 모양
            
                .foregroundStyle(by: .value("sentiment", response.sentiment)) // 아래 chartForeGroundStyleScale로 지정한 sentiment 지정 색으로 자동 반영
        }
        .chartForegroundStyleScale([
            Sentiment.positive : Sentiment.positive.sentimentColor,
            Sentiment.negative : Sentiment.negative.sentimentColor,
            Sentiment.moderate : Sentiment.moderate.sentimentColor
        ])
        
        //도넛 중앙 아이콘(chartBackground는 차트 뒤 레이어에 뷰를 그림. GeometryReader + plotFrame으로 차트의 실제 영역을 계산해, 도넛 중앙 정확히 아이콘을 배치
        .chartBackground{ChartProxy in
            GeometryReader { geometry in
                if let anchor = ChartProxy.plotFrame{
                    let frame = geometry[anchor]
                    Image(systemName: "figure.hiking")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: frame.height * 0.4)          // 차트 높이의 40%
                        .foregroundStyle(Color(white: 0.59))        // 정중앙 배치
                        .position(x: frame.midX, y: frame.midY)
                }
            }
        }
        //범례 및 레이아웃
        .chartLegend(position: .trailing, alignment:.center)        // 범례를 오른쪽 중앙에
        .frame(height: 200)
        .padding()
    }
}
```

5.** Geometry Reader **

## **preview**
<p align="center">
  <img src="Preview/Preview_1.png" width="19%">
  <img src="Preview/Preview_2.png" width="19%">
  <img src="Preview/Preview_3.png" width="19%">
  <img src="Preview/Preview_4.png" width="19%">
  <img src="Preview/Preview_5.png" width="19%">
</p>

## **tutorial link**
[Apple Developer Tutorial](https://developer.apple.com/tutorials/develop-in-swift/analyze-sentiment-in-text)


