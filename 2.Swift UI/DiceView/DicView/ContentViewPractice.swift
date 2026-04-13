//
//  ContentViewPractice.swift
//  DicView
//
//  Created by jeegarden on 4/7/26.
//
import SwiftUI
struct ContentViewPractice: View{
    @State private var numberofDice: Int = 1
    
    var body: some View{
        HStack{
            ForEach(1...numberofDice, id: \.description){_ in
                DiceViewPractice()
            }
        }
        
        HStack{
            Button("remove dice"){
                withAnimation{
                    numberofDice-=1
                }
            }
            .disabled(numberofDice==1)
            
            Button("add dice"){
                withAnimation{
                    numberofDice+=1
                }
            }
            .disabled(numberofDice==5)
        }
    }
}
#Preview {
    ContentViewPractice()
}
