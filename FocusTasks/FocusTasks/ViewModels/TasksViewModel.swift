//
//  TasksViewModel.swift
//  FocusTasks
//
//  Created by Lithika Damnod on 7/10/26.
//


import SwiftUI

@Observable
class TasksViewModel {
    private(set) var tasks: [TaskItem] = [
        TaskItem(title: "Finish FYP literature reading", priority: .high, isComplete: false),
        TaskItem(title: "Finish iOS lecture", priority: .medium, isComplete: false),
        TaskItem(title: "Read SwiftUI documentation", priority: .low, isComplete: true)
    ]
    
    func createItem(_ title: String, priority: Priority = .low) {
        let item = TaskItem(title: title, priority: priority, isComplete: false)
        tasks.append(item)
    }
    
    func toggle(_ task: TaskItem) {
//        APROACH 1
//        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
//            tasks[index].isComplete.toggle()
//        } else {
//            return
//        }
        
//        APROACH 2
        guard let index = tasks.firstIndex(where: { $0.id == task.id }) else { return }
        
        tasks[index].isComplete.toggle()
    }
}
