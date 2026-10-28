//
//  MovieTile.swift
//  FavoriteMovies
//
//  Created by Lithika Damnod on 7/10/26.
//

import SwiftUI

struct MovieTile: View {
    var movie: Movie
    let onToggleFavorite: (() -> Void)?
    
    init(_ movie: Movie, onToggleFavorite: (() -> Void)? = nil) {
        self.movie = movie
        self.onToggleFavorite = onToggleFavorite
    }
    
    var body: some View {
        HStack {
            Image(movie.image)
                .resizable()
                .frame(width: 80, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.trailing)
            
            VStack(alignment: .leading) {
                Text(movie.title)
                    .font(.title3)
                    .lineLimit(1)
                Text(movie.description)
                    .foregroundStyle(.secondary)
                    .lineLimit(3)
            }
            
            Spacer()
            
            Button {
               onToggleFavorite?()
            } label: {
                Image(systemName: movie.isFavorite ? "heart.fill" : "heart").imageScale(.large)
            }
            .buttonStyle(.borderless)
            .padding(.leading)

        }
    }
}

#Preview {
    MovieTile(MoviesViewModel().movies[0])
}
