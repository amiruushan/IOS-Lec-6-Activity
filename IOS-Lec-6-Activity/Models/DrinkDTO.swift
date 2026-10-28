//
//  BookDTO.swift
//  IOS-Lec-6-Activity
//
//  Created by Dimalsha on 2026-10-28.
//

import Foundation

struct DrinkDTO: Codable, Identifiable{
    let name : String
    let thumbnail: String
    let id: String
    
    enum CodingKeys: String ,CodingKey{
        case name = "strDrink"
        case thumbnail = "strDrinkThumb"
        case id = "idDrink"
    }
}




struct Root: Codable {
    let drinks: [DrinkDTO]
}
