//
//  ContentView.swift
//  FocusTasks
//
//  Created by Lithika Damnod on 7/10/26.
//

import SwiftUI

struct ContentView: View {
    @State private var viewModel = TasksViewModel()
    
    var body: some View {
// OUTDATED
//        TabView {
//            TasksView()
//                .tabItem {
//                    Label("Tasks", systemImage: "checklist")
//                }
//            SettingsView()
//                .tabItem {
//                    Label("Settings", systemImage: "gearshape")
//                }
//        }
        
        TabView {
            Tab("Tasks", systemImage: "checklist") {
                TasksView()
            }
            
            Tab("Settings", systemImage: "gearshape") {
                SettingsView()
            }
        }
    }
}

#Preview {
    ContentView()
        .environment(TasksViewModel())
}
