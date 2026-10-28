//
//  MovieListViewModel.swift
//  MovieGenreFilter
//
//  Created by Lithika Damnod on 25/9/26.
//

import Foundation
import Observation
import SwiftData

@Observable
class MovieListViewModel {
    var searchText: String = ""
    
    func filter(_ movies: [Movie]) -> [Movie] {
        guard !searchText.isEmpty else { return movies }
        
        return movies.filter { movie in
            movie.title.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    func markWatched(_ movie: Movie, databaseManager: DatabaseManager, context: ModelContext) {
        databaseManager.markwatched(movie, context: context)
    }
    
    func addMovie(_ movie: Movie, databaseManager: DatabaseManager, context: ModelContext) {
        databaseManager.insert(movie, context: context)
    }
    
    func deleteMovies(at offsets: IndexSet, from movies: [Movie], databaseManager: DatabaseManager, context: ModelContext) {
        let filtered = filter(movies)
        for index in offsets {
            databaseManager.delete(movies[index], context: context)
        }
    }
}
