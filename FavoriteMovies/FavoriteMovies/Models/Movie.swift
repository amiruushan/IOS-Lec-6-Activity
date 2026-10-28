//
//  Movie.swift
//  FavoriteMovies
//
//  Created by Lithika Damnod on 7/10/26.
//

import SwiftUI

struct Movie: Identifiable {
    let id: UUID = UUID()
    
    var title: String
    var description: String
    var image: String
    
//    var year: Int
//    var duration: Int
//
//    var genre: Genre
//    var rating: Int
    
    var isFavorite: Bool
}
