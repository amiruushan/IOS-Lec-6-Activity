//
//  Movie.swift
//  MovieGenreFilter
//
//  Created by Lithika Damnod on 25/9/26.
//

import Foundation
import SwiftUI

struct Movie: Identifiable {
    let id: UUID
    var title: String
    var genre: Genre
    var rating: Double
    var year: Int
    var synopsis: String
    var duration: Int
    var isWatched: Bool
    
    
    init(title: String, genre: Genre, rating: Double, year: Int, synopsis: String, duration: Int, isWatched: Bool) {
        self.id = UUID()
        self.title = title
        self.genre = genre
        self.rating = rating
        self.year = year
        self.synopsis = synopsis
        self.duration = duration
        self.isWatched = isWatched
    }
}

enum Genre: String, CaseIterable {
    case action = "Action"
    case drama = "Drama"
    case thriller = "Thriller"
    case scifi = "Sci-Fi"
    case comedy = "Comedy"
    
    var icon: String {
        switch self {
            case .action: return "flame.fill"
            case .drama: return "theatermasks.fill"
            case .thriller: return "eye.trianglebadge.exclamationmark.fill"
            case .scifi: return "sparkles"
            case .comedy: return "face.smiling.fill"
        }
    }
    
    var color: Color {
        switch self {
            case .action: return .red
            case .drama: return .purple
            case .thriller: return .orange
            case .scifi: return .blue
            case .comedy: return .yellow
        }
    }
}


