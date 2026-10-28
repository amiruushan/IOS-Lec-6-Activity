//
//  FocusTasksApp.swift
//  FocusTasks
//
//  Created by Lithika Damnod on 7/10/26.
//

import SwiftUI

@main
struct FocusTasksApp: App {
    var tasksViewModel = TasksViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(tasksViewModel)
        }
    }
}
