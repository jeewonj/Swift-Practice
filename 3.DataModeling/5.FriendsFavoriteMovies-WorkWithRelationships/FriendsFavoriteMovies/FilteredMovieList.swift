//
//  FilteredMovieList.swift
//  FriendsFavoriteMovies
//
//  Created by jeegarden on 4/14/26.
//
import SwiftUI

struct FilteredMovieList: View{
    @State private var searchText = ""
    
    var body: some View{
        NavigationSplitView{
            MovieList(titleFilter: searchText)
                .searchable(text: $searchText)
        }detail: {
            Text("Select a movie")
                .navigationTitle("Movie")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}
#Preview {
    FilteredMovieList()
        .modelContainer(SampleData.shared.modelContainer)
}
