//
//  FavoritesView.swift
//  FavoriteMovies
//
//  Created by Lithika Damnod on 7/10/26.
//

import SwiftUI

struct FavoritesView: View {
    @Environment(MoviesViewModel.self) private var viewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.movies.filter { $0.isFavorite }) { movie in
                    MovieTile(movie) {
                        viewModel.toggleFavorite(movie)
                    }
                }
            }
            .navigationTitle("Favorites")
        }
    }
}

#Preview {
    FavoritesView()
        .environment(MoviesViewModel())
}
