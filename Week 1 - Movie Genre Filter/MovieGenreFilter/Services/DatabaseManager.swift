//
//  DatabaseManager.swift
//  MovieGenreFilter
//
//  Created by Lithika Damnod on 10/10/26.
//

import Foundation
import SwiftUI
import SwiftData
import Observation

@MainActor
@Observable
final class DatabaseManager {
    var errorMessage: String?
    var showError: Bool = false
    
    func insert(_ movie: Movie, context: ModelContext) {
        context.insert(movie)
        save(context: context)
    }
    
    func delete(_ movie: Movie, context: ModelContext) {
        context.delete(movie)
        save(context: context)
    }
    
    func markwatched(_ movie: Movie, context: ModelContext) {
        movie.isWatched = true
        save(context: context)
    }
    
    func save(context: ModelContext) {
        guard context.hasChanges else { return }
        
        do {
            try context.save()
        } catch {
            record(error)
        }
        
    }
    
    func record(_ error: Error) {
        errorMessage = "Failed to save: \(error.localizedDescription)"
        showError = true
    }

}
