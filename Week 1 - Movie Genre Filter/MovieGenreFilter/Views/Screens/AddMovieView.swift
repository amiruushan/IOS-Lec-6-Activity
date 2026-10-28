//
//  AddMovieView.swift
//  MovieGenreFilter
//
//  Created by Lithika Damnod on 5/10/26.
//

import SwiftUI

struct AddMovieView: View {
    
    var onSave: (Movie) -> Void
    
    @Environment(\.dismiss) private var dismiss
    @State private var viewModel = AddMovieViewModel()
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Basic Information") {
                    TextField("Movie Title", text: $viewModel.title)
                        .textInputAutocapitalization(.words)
                    Picker("Genre", selection: $viewModel.selectedGenre) {
                        ForEach(Genre.allCases, id: \.self) { genre in
                            Label(genre.rawValue, systemImage:
                            genre.icon).tag(genre)
                        }
                    }
                }
                
                Section("Details") {
                    Stepper(value: $viewModel.year, in: 1900...2100) {
                        HStack {
                            Text("Year:")
                            Text(viewModel.year, format: .number.grouping(.never))
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Rating"); Spacer()
                            RatingView(rating: viewModel.rating)
                        }
                        
                        Slider(value: $viewModel.rating, in: 0...10, step: 0.1).tint(.yellow)
                    }
                    
                    Stepper("Duration: \(viewModel.duration) Mins", value: $viewModel.duration, in: 1...500)
                }
                
                Section("Synopsis") {
                    TextEditor(text: $viewModel.synopsis).frame(minHeight: 100)
                }
            }
            .navigationTitle("New Movie")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") { dismiss() }
                        .foregroundStyle(.red)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") { onSave(viewModel.buildMovie())
                        dismiss()
                    }
                    .fontWeight(.bold)
                    .disabled(!viewModel.isFormValid)
                }
            }
            
        }
    }
}

#Preview {
    AddMovieView { movie in
        print("Preview saved: \(movie.title)")
    }
}
