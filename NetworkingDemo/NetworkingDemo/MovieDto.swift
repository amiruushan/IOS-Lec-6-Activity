//
//  MovieDto.swift
//  NetworkingDemo
//
//  Created by Lithika Damnod on 28/10/26.
//


// Codable allows back and forth convertion from JSON to Object, Object to JSON
// It's a combination of @Decodable & @Encodable
struct MovieDTO: Codable, Identifiable {
    let id: String
    let title: String
    let description: String
    let director: String
    let releaseDate: String
    let movieBanner: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case description
        case director
        case releaseDate = "release_date"
        case movieBanner = "movie_banner"
    }
}
