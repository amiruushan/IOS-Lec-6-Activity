//
//  MoviesViewModel.swift
//  FavoriteMovies
//
//  Created by Lithika Damnod on 7/10/26.
//


import Observation

@Observable
class MoviesViewModel {
    private(set) var movies: [Movie] = [
        Movie(
            title: "Inception",
            description: "A thief who enters people's dreams is given a difficult task: planting an idea in someone's mind.",
            image: "Thumbnails/Inception",
            isFavorite: true
        ),
        Movie(
            title: "Interstellar",
            description: "A group of astronauts travels through a wormhole in search of a new home for humanity.",
            image: "Thumbnails/Interstellar",
            isFavorite: false
        ),
        Movie(
            title: "The Dark Knight",
            description: "Batman faces a dangerous criminal who pushes Gotham City into chaos.",
            image: "Thumbnails/TheDarkNight",
            isFavorite: true
        ),
        Movie(
            title: "Spirited Away",
            description: "A young girl enters a mysterious spirit world and must find a way to save her parents.",
            image: "Thumbnails/SpiritedAway",
            isFavorite: false
        ),
        Movie(
            title: "Parasite",
            description: "A struggling family slowly becomes involved with a wealthy household, leading to unexpected consequences.",
            image: "Thumbnails/Parasite",
            isFavorite: true
        ),
        Movie(
            title: "Whiplash",
            description: "A young drummer pushes himself to become great under the demanding guidance of an intense instructor.",
            image: "Thumbnails/Whiplash",
            isFavorite: false
        ),
        Movie(
            title: "Arrival",
            description: "A linguist works to communicate with mysterious visitors who have arrived on Earth.",
            image: "Thumbnails/Arrival",
            isFavorite: false
        ),
        Movie(
            title: "Dune",
            description: "A young nobleman becomes caught in a conflict over a valuable desert planet.",
            image: "Thumbnails/Dune",
            isFavorite: true
        ),
        Movie(
            title: "The Social Network",
            description: "The story of the creation of Facebook and the conflicts surrounding its rise.",
            image: "Thumbnails/TheSocialNetwork",
            isFavorite: false
        ),
        Movie(
            title: "Spider-Man: Into the Spider-Verse",
            description: "A teenager discovers a world where multiple Spider-People come together.",
            image: "Thumbnails/SpiderMan",
            isFavorite: true
        )
    ]
    
    func toggleFavorite(_ movie: Movie) {
        guard let index = movies.firstIndex( where: { $0.id == movie.id }) else { return }
        movies[index].isFavorite = !movies[index].isFavorite
    }
}
