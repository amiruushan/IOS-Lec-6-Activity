//
//  MovieListViewModel.swift
//  MovieGenreFilter
//
//  Created by Lithika Damnod on 25/9/26.
//

import Foundation
import Observation

@Observable
class MovieListViewModel {
    var movies: [Movie] = MockDataStore.movies
    
    func markWatched(_ movie: Movie) {
        if let index = movies.firstIndex(where: { $0.id == movie.id }) {
            movies[index].isWatched = true
        }
    }
    
}
