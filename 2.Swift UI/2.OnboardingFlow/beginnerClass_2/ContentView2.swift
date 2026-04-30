//
//  Untitled.swift
//  beginnerClass_2
//
//  Created by jeegarden on 3/27/26.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct ContentView2: View {
    var body: some View {
        TabView {
            Welcomepage()
            FeaturesPage()
        }
        .background(Gradient(colors: gradientColors))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
    }
}


#Preview {
    ContentView2()
}
