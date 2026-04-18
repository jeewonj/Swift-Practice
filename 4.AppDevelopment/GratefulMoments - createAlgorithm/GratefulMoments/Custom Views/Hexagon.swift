//
//  Hexagon.swift
//  GratefulMoments
//
//  Created by jeegarden on 4/18/26.
//
import SwiftUI


struct Hexagon<Content: View> : View {
    private let borderWidth = 2.0
    var borderColor: Color = .ember
    var layout: HexagonLayout = .standard
//    var size: CGFloat = 250
    var moment: Moment? = nil
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        ZStack{
            if let background = moment?.image{
                Image(uiImage: background)
                    .resizable()
                    .scaledToFill()
            }
            content()
                .frame(width: layout.size, height: layout.size)
            
        }
        .mask {
            Image(systemName: "hexagon.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: layout.size - borderWidth, height: layout.size - borderWidth)
                .fontWeight(.ultraLight)
        }
        .background{
            Image(systemName: "hexagon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: layout.size, height: layout.size)
                .foregroundStyle(borderColor)
                .fontWeight(.ultraLight)
            
        }
        .frame(width: layout.size, height: layout.size)
        .overlay(alignment: .leading){
            if let moment{
                HexagonAccessoryView(moment:moment, hexagonLayout: layout)
            }
        }
        
    }
    
}


//#Preview {
//    Hexagon{
//        Text("Hello, world")
//    }
//}
#Preview {
    Hexagon(moment: Moment.imageSample) {
        Text(Moment.imageSample.title)
            .foregroundStyle(Color.white)
    }
    .sampleDataContainer()
}
