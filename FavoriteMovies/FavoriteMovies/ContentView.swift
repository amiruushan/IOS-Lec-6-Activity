//
//  ContentView.swift
//  FavoriteMovies
//
//  Created by Lithika Damnod on 7/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Movies", systemImage: "movieclapper.fill") {
                MoviesView()
            }
            
            Tab("Favorites", systemImage: "heart.fill") {
                FavoritesView()
            }
        }
    }
}

#Preview {
    ContentView()
        .environment(MoviesViewModel())
}
