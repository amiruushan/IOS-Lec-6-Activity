//
//  MoviesView.swift
//  FavoriteMovies
//
//  Created by Lithika Damnod on 7/10/26.
//

import SwiftUI

struct MoviesView: View {
    @Environment(MoviesViewModel.self) private var viewModel: MoviesViewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.movies) { movie in
                    MovieTile(movie) {
                        viewModel.toggleFavorite(movie)
                    }
                }
            }
            .navigationTitle("Movies")
        }
    }
}

#Preview {
    MoviesView()
        .environment(MoviesViewModel())
}
