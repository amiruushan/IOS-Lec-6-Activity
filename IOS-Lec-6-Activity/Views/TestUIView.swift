//
//  TestUIView.swift
//  IOS-Lec-6-Activity
//
//  Created by Dimalsha on 2026-10-28.
//

import SwiftUI

struct TestUIView: View {
    @State private var viewmodel = DrinksViewModel()
//    @State private var drinks : [DrinkDTO]=[]
    
    var body: some View {
        NavigationStack{
            
            Group{
                if(viewmodel.drinks.isEmpty){
                   ProgressView()
                }else{
                    List{
                        ForEach(viewmodel.drinks) { drink in
                            /*@START_MENU_TOKEN@*/Text(drink.name)/*@END_MENU_TOKEN@*/
                        }
                    }                }
            }.navigationTitle("DRINKS")
                

           
        } .onAppear{
            
            
        }
        .onDisappear{
            
        }
        .task {
            await viewmodel.fetch()
        }
    }
   
}

#Preview {
    TestUIView()
}
