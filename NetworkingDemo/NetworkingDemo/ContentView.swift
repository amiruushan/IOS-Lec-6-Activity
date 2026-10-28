//
//  ContentView.swift
//  NetworkingDemo
//
//  Created by Lithika Damnod on 28/10/26.
//

import SwiftUI

struct ContentView: View {
    @State private var movies: [MovieDTO] = []
    
    var body: some View {
        NavigationStack {
            Group {
                if movies.isEmpty {
                    ProgressView()
                } else {
                    List {
                        ForEach(movies) { movie in
                            VStack {
                                Text(movie.title)
                                    .font(.title)
                                Text(movie.releaseDate)
                                    .font(.caption)
                                Text(movie.description).multilineTextAlignment(.leading)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
            }
            .navigationTitle("IMDB Movies")
            .task {
                await fetchMovieData()
            }
        }
        
    }
    
    func fetchMovieData() async {
        guard let url = URL(string: "https://ghibliapi.vercel.app/films") else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        do {
            let (data, urlResponse) = try await URLSession.shared.data(for: request)
            
            guard let httpResponse = urlResponse as? HTTPURLResponse else { return }
            
            guard (200...299).contains(httpResponse.statusCode) else { return }
            
           
            let decodedData = try JSONDecoder().decode([MovieDTO].self, from: data)
            
            movies = decodedData
            
        } catch {
            print("something went wrong, please try again")
        }
    }
}

#Preview {
    ContentView()
}
