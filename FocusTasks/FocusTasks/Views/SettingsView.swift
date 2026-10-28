//
//  SettingsView.swift
//  FocusTasks
//
//  Created by Lithika Damnod on 7/10/26.
//

import SwiftUI

struct SettingsView: View {
    @Environment(TasksViewModel.self) private var tasksViewModel

    var body: some View {
        Form {
            Section {
                LabeledContent("Total", value: "\(tasksViewModel.tasks.count)")
                LabeledContent("Completed", value: "\(tasksViewModel.tasks.count(where: \.isComplete))")
            }
        }
    }
}

#Preview {
    SettingsView()
        .environment(TasksViewModel())
}
