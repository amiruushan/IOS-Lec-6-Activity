//
//  DatabaseSeeder.swift
//  MovieGenreFilter
//
//  Created by Lithika Damnod on 10/10/26.
//

import SwiftData

@ModelActor
actor DatabaseSeeder {
    func seedIfEmpty() throws {
        let descriptor = FetchDescriptor<Movie>()
        
        guard try modelContext.fetchCount(descriptor) == 0 else { return }
        
        for seed in MockDataStore.movies {
            guard let genre = Genre(rawValue: seed.genreRawValue) else { continue }
            
            let movie = Movie(title: seed.title, genre: genre, rating: seed.rating, year: seed.year, synopsis: seed.synopsis, duration: seed.duration, isWatched: seed.isWatched)
            
            modelContext.insert(movie)
        }
        
        try modelContext.save()
    }
}
