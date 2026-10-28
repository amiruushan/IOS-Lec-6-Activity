//
//  MockDataStore.swift
//  MovieGenreFilter
//
//  Created by Lithika Damnod on 25/9/26.
//

import Foundation

struct MovieSeed: Sendable {
    let title: String
    let genreRawValue: String
    let rating: Double
    let year: Int
    let synopsis: String
    let duration: Int
    let isWatched: Bool
}

enum MockDataStore {
    nonisolated static let movies: [MovieSeed] = [
        MovieSeed(title: "Oppenheimer", genreRawValue: "Drama", rating: 8.9, year: 2023, synopsis: "The story of J. Robert Oppenheimer's role in the development", duration: 180, isWatched: false),
        
        MovieSeed(title: "Dune: Part Two", genreRawValue: "Sci-Fi", rating: 8.6, year: 2024, synopsis: "Paul Atreides unites with Chani and the Fremen while seeking", duration: 166, isWatched: true),
        
        MovieSeed(title: "The Dark Knight", genreRawValue: "Action", rating: 9.0, year: 2008, synopsis: "Batman faces the Joker, a criminal mastermind who plunges Go", duration: 152, isWatched: true),
        
        MovieSeed(title: "Parasite", genreRawValue: "Thriller", rating: 8.5, year: 2019, synopsis: "A poor family schemes to become employed by a wealthy family", duration: 132, isWatched: false),
        
        MovieSeed(title: "Interstellar", genreRawValue: "Sci-Fi", rating: 8.7, year: 2014, synopsis: "A team of explorers travel through a wormhole in space in an", duration: 169, isWatched: false),
        
        MovieSeed(title: "Mad Max: Fury Road", genreRawValue: "Action", rating: 8.1, year: 2015, synopsis: "In a post-apocalyptic wasteland, a woman rebels against a ty", duration: 120, isWatched: true),
        
        MovieSeed(title: "Knives Out", genreRawValue: "Thriller", rating: 7.9, year: 2019, synopsis: "A detective investigates the death of a patriarch of an ecce", duration: 130, isWatched: false),
        
        MovieSeed(title: "The Grand Budapest Hotel", genreRawValue: "Comedy", rating: 8.1, year: 2, synopsis: "A writer encounters the owner of an aging European hotel bet", duration: 99, isWatched: true),
        
        MovieSeed(title: "Arrival", genreRawValue: "Sci-Fi", rating: 7.9, year: 2016, synopsis: "A linguist works with the military to communicate with alien", duration: 116, isWatched: false)
    ]
}

