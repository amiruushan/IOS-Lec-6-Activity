//
//  TaskItem.swift
//  FocusTasks
//
//  Created by Lithika Damnod on 7/10/26.
//

import SwiftUI

struct TaskItem: Identifiable {
    let id: UUID = UUID()
    var title: String
    var priority: Priority
    var isComplete: Bool
}
