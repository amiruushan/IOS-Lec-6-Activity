//
//  DrinksViewModel.swift
//  IOS-Lec-6-Activity
//
//  Created by Dimalsha on 2026-10-28.
//

import Foundation
import Observation

@Observable
class DrinksViewModel{
    
    var drinks :[DrinkDTO] = []
    
    
    func addToFavorite(){
        
    }
    
    func  fetch() async{
        guard let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Alcoholic") else{
            print("url issue")
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        do{
            let (data,urlResponse) = try await URLSession.shared.data(for: request)
            guard let httpResponse = urlResponse as? HTTPURLResponse else{
                print("fetching issue")
                return
            }
            guard (200...299).contains(httpResponse.statusCode)else{
                print("unsuccessful response")
                return
            }
            
            
            
            drinks = try JSONDecoder().decode(Root.self, from: data).drinks
            
        }catch{
            print(error)
        
        }
    }
}
