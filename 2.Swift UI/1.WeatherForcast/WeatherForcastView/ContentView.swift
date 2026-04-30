//
//  ContentView.swift
//  WeatherForcastView
//
//  Created by jeegarden on 4/9/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            dayForecast(day: "Mon",isRainy: false, high: 70, low: 58)
            
            dayForecast(day: "Tue",isRainy: true, high: 60, low: 40)
            dayForecast(day: "Wed", isRainy:true , high: 40, low:20 )
        }
    }
}

struct dayForecast: View{
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String{
        if isRainy{
            return "cloud.rain.fill"
        }else{
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View{
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("\(high)")
                .fontWeight(Font.Weight.semibold)
            Text("\(low)")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
#Preview {
    ContentView()
}

