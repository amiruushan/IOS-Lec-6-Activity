//
//  MovieListView.swift
//  MovieGenreFilter
//
//  Created by Lithika Damnod on 25/9/26.
//

import SwiftUI

struct MovieListView: View {
    @State private var viewModel = MovieListViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.movies) {
                movie in NavigationLink(destination: MovieDetailView(movie: movie, onMarkWatched: {
                        viewModel.markWatched($0)
                    })) {
                        MovieRowView(movie: movie)
                }
            }
            .navigationTitle("Watch Checklist")
            
        }
    }
}

#Preview {
    MovieListView()
}
