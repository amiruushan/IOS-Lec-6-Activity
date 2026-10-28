//
//  TasksView.swift
//  FocusTasks
//
//  Created by Lithika Damnod on 7/10/26.
//

import SwiftUI

struct TasksView: View {
    @Environment(TasksViewModel.self) private var viewModel
    @State private var newTaskTitle: String = ""
    
    var body: some View {
        List {
            ForEach(viewModel.tasks) { task in
                HStack {
                    Button(action: {
                        viewModel.toggle(task)
                    }, label: {
                        Image(systemName: task.isComplete ? "checkmark.circle.fill" : "circle")
                    })
                    
                    Text(task.title); Spacer()
                    
                    Text(task.priority.rawValue.capitalized)
                        .foregroundStyle(.secondary)
                }
            }
            
            HStack {
                TextField("Add a new task", text: $newTaskTitle)
                Button {
                    guard !newTaskTitle.isEmpty else { return }
                    
                    viewModel.createItem(newTaskTitle)
                    newTaskTitle = ""
                } label: {
                    Image(systemName: "plus.circle.fill")
                }
                .buttonStyle(.borderless)

            }
        }
    }
    
}

#Preview {
    TasksView()
        .environment(TasksViewModel())
}
