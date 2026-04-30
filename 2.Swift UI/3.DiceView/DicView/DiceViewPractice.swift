//
//  DiceViewPractice.swift
//  DicView
//
//  Created by jeegarden on 4/7/26.
//
import SwiftUI
struct DiceViewPractice: View{
    @State private var numberofPips: Int=1
    
    var body: some View{
        VStack{
            Image(systemName: "die.face.\(numberofPips)")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1,contentMode: .fit)
                //.foregroundStyle(.black,.white)
            
            Button("Roll"){
                withAnimation{
                    numberofPips=Int.random(in: 1...6)
                }
            }
            .buttonStyle(.bordered)
        }
    }
}
#Preview {
    DiceViewPractice()
}
