//
//  Untitled.swift
//  beginnerClass_2
//
//  Created by jeegarden on 3/27/26.
//
import SwiftUI

struct Welcomepage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(Color.white)
            }
            Text("Welcome to My App")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
                //.border(.black, width: 1.5)
            Text("Description text")
                .font(.title2)
                //.border(.black, width: 1.5)
        }
        //.border(.orange, width: 1.5)
        .padding()
        //.border(.purple, width: 1.5)
    }
}
#Preview {
    Welcomepage()
}
