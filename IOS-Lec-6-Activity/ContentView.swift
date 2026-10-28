//
//  ContentView.swift
//  IOS-Lec-6-Activity
//
//  Created by Lithika Damnod on 28/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Home",systemImage: "house.fill"){
                HomeView()
            }
            Tab("Favourites", systemImage: "heart.fill"){
                FavoritesView()
            }
        }
    }
}

#Preview {
    ContentView()
}
