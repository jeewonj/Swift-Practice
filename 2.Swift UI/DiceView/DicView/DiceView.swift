//
//  Untitled.swift
//  DicView
//
//  Created by jeegarden on 3/28/26.
//
import SwiftUI
struct DiceView: View {
    @State private var numberOfPips: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)//이게 없으면 contentView에서 주사위 개수를 늘리면 주사위 넓이가 줄어듦
                .foregroundStyle(.black, .white)
            
            Button("Roll") {
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                }
            }
            .buttonStyle(.bordered)
        }
    }
}


#Preview {
    DiceView()
}
