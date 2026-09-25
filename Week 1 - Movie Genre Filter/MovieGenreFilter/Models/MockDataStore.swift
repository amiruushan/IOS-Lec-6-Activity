//
//  MockDataStore.swift
//  MovieGenreFilter
//
//  Created by Lithika Damnod on 25/9/26.
//

import Foundation

struct MockDataStore {
    static let movies: [Movie] = [
        Movie(title: "Oppenheimer", genre: .drama, rating: 8.9, year: 2023, synopsis: "The story of J. Robert Oppenheimer's role in the development", duration: 180, isWatched: false),
        
        Movie(title: "Dune: Part Two", genre: .scifi, rating: 8.6, year: 2024, synopsis: "Paul Atreides unites with Chani and the Fremen while seeking", duration: 166, isWatched: true),
        
        Movie(title: "The Dark Knight", genre: .action, rating: 9.0, year: 2008, synopsis: "Batman faces the Joker, a criminal mastermind who plunges Go", duration: 152, isWatched: true),
        
        Movie(title: "Parasite", genre: .thriller, rating: 8.5, year: 2019, synopsis: "A poor family schemes to become employed by a wealthy family", duration: 132, isWatched: false),
        
        Movie(title: "Interstellar", genre: .scifi, rating: 8.7, year: 2014, synopsis: "A team of explorers travel through a wormhole in space in an", duration: 169, isWatched: false),
        
        Movie(title: "Mad Max: Fury Road", genre: .action, rating: 8.1, year: 2015, synopsis: "In a post-apocalyptic wasteland, a woman rebels against a ty", duration: 120, isWatched: true),
        
        Movie(title: "Knives Out", genre: .thriller, rating: 7.9, year: 2019, synopsis: "A detective investigates the death of a patriarch of an ecce", duration: 130, isWatched: false),
        
        Movie(title: "The Grand Budapest Hotel", genre: .comedy, rating: 8.1, year: 2, synopsis: "A writer encounters the owner of an aging European hotel bet", duration: 99, isWatched: true),
        
        Movie(title: "Arrival", genre: .scifi, rating: 7.9, year: 2016, synopsis: "A linguist works with the military to communicate with alien", duration: 116, isWatched: false)
    ]
}
