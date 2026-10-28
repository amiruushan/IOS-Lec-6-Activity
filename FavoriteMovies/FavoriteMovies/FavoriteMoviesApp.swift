//
//  FavoriteMoviesApp.swift
//  FavoriteMovies
//
//  Created by Lithika Damnod on 7/10/26.
//

import SwiftUI

@main
struct FavoriteMoviesApp: App {
    var moviesViewModel = MoviesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(moviesViewModel)
        }
    }
}
