//
//  UserPreferences.swift
//  MovieGenreFilter
//
//  Created by Lithika Damnod on 30/9/26.
//

import SwiftUI
import Observation

@Observable
final class UserPreferences {
    
    var colorSchemePreference: ColorSchemePreference = .system
    var displayName: String = "My"
    
    var prefferedColorScheme: ColorScheme? {
        switch colorSchemePreference {
            case .light: .light
            case .dark: .dark
            case .system: nil
        }
    }
    
    enum ColorSchemePreference: String, CaseIterable {
        case light = "Light"
        case dark = "Dark"
        case system = "System"
        
        var icon: String {
            switch self {
                case .light: "sun.max"
                case .dark: "moon.stars"
                case .system: "circle.lefthalf.filled"
            }
        }
    }
}
