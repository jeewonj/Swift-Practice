//
//  ContentView.swift
//  FriendsFavoriteMovies
//
//  Created by jeegarden on 4/12/26.
//

import SwiftUI
import SwiftData//튜토리얼에는 없는데 쓰니까 빌드됨....

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Friends", systemImage: "person.and.person") {
                FriendList()
                
            }


            Tab("Movies", systemImage: "film.stack") {
                MovieList()
            }
        }
    }
}


#Preview {
    ContentView()
        .modelContainer(SampleData.shared.modelContainer)
}
