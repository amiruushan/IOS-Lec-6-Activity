//
//  TestUIView.swift
//  IOS-Lec-6-Activity
//
//  Created by Dimalsha on 2026-10-28.
//

import SwiftUI

struct TestUIView: View {
    @State private var drinks : [DrinkDTO]=[]
    var body: some View {
        NavigationStack{
            
            Group{
                if(drinks.isEmpty){
                   ProgressView()
                }else{
                    List{
                        ForEach(drinks) { drink in
                            /*@START_MENU_TOKEN@*/Text(drink.name)/*@END_MENU_TOKEN@*/
                        }
                    }                }
            }.navigationTitle("DRINKS")
                

           
        } .onAppear{
            
            
        }
        .onDisappear{
            
        }
        .task {
            await fetchDrinkData()
        }
    }
    func  fetchDrinkData() async{
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

#Preview {
    TestUIView()
}
