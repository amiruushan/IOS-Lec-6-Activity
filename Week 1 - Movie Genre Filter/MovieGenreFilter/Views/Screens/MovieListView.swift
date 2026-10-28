//
//  MovieListView.swift
//  MovieGenreFilter
//
//  Created by Lithika Damnod on 25/9/26.
//

import SwiftUI
import SwiftData

struct MovieListView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(UserPreferences.self) private var preferences
    @Environment(DatabaseManager.self) private var databaseManager
    
    @Query(sort: \Movie.title) private var movies: [Movie]
    
    @State private var viewModel = MovieListViewModel()
    @State private var showAddMovie = false
    @State private var showSettings = false

    private var filteredMovie: [Movie] {
        viewModel.filter(movies)
    }
    
    private var navigationTitle: String {
        preferences.displayName.isEmpty ? "Movie List" : "\(preferences.displayName)'s Movies"
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.filteredMovies) { movie in
                    NavigationLink(destination: {
                        MovieDetailView(movie: movie)
                    }, label: {
                        MovieRowView(movie: movie)
                    }) {
                    .onDelete { indexSet in  viewModel.deleteMovies(at: indexSet) }
                }
            }
            .searchable(text: $viewModel.searchText, prompt: "Search Movies")
            .animation(.default, value: viewModel.filteredMovies.map { $0.id })
            .navigationTitle(navigationTitle)
            .toolbar(content: { toolbarContent })
            .sheet(isPresented: $showAddMovie) {
                AddMovieView { viewModel.addMovie($0) }
            }
            .sheet(isPresented: $showSettings) {
                SettingsSheetView()
            }
        }
    }
    
    @ToolbarContentBuilder
    private var toolbarContent: some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            HStack(spacing: 16) {
                Button { showAddMovie = true } label: {
                    Image(systemName: "plus")
                }
                Button { showSettings = true } label: {
                    Image(systemName: "gearshape")
                }
            }
        }
    }
}

#Preview {
    MovieListView()
        .environment(UserPreferences())
        .environment(DatabaseManager())
        .modelContainer(PreviewSupport.container)
}
