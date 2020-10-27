//
//  TasksViewModel.swift
//  TaskManager
//
//  Created by Gina Mullins on 10/25/20.
//

import Foundation
import SwiftUI

enum ListType {
    case pending
    case completed
}


class TasksViewModel: ObservableObject {

    // MARK: private variables

    private var allTasks: [Task] = []

    // MARK: public variables

    @Published public var tasks: [Task] = [] {
        didSet {
            numberOfTasks = tasks.count
        }
    }

    public var selected: ListType = .pending
    public var numberOfTasks: Int = 0

    // MARK: public methods

    // fetch records from CoreData
    func fetchTasks() {

    }

    // save new record to CoreData
    func saveNew(task: Task) {
        
    }

    // get button color depending on selected
    func selectedColor(type: ListType) -> Color {
        return type == selected ? .black : .gray
    }

    func loadPending() {
        selected = .pending
        tasks = allTasks.filter({ $0.isComplete == false })
    }

    func loadCompleted() {
        selected = .completed
        tasks = allTasks.filter({ $0.isComplete == true })
    }

    // for test
    init() {
        let task = Task(taskID: 1, title: "Walk the dog")
        allTasks.append(task)
        loadPending()
    }
}
