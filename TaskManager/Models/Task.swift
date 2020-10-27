//
//  Task.swift
//  TaskManager
//
//  Created by Gina Mullins on 10/25/20.
//

import Foundation
import UIKit

enum Priority: Int {
    case low
    case medium
    case high

    func color() -> UIColor {
        switch self {
        case .low:
            // green
            return UIColor(red: 95/255, green: 205/255, blue: 141/255, alpha: 1)
        case .medium:
            // orange
            return UIColor(red: 251/255, green: 131/255, blue: 51/255, alpha: 1)
        case .high:
            // red
            return UIColor(red: 255/255, green: 97/255, blue: 89/255, alpha: 1)
        }
    }
}

class Task: NSObject {
    var taskID: Int
    var title: String
    var date: Date
    var priority: Priority
    var isComplete: Bool

    private let dateFormatter = DateFormatter()

    init(taskID: Int = 0, title: String, date: Date = Date(), priority: Priority = .low, isComplete: Bool = false) {
        self.taskID = taskID
        self.title = title
        self.date = date
        self.priority = priority
        self.isComplete = isComplete
    }

    func formattedDate() -> String {
        dateFormatter.dateFormat = "MMM dd, hh:mm a"
        return dateFormatter.string(from: self.date)
    }
}
