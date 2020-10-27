//
//  CalendarVM.swift
//  TaskManager
//
//  Created by Gina Mullins on 10/25/20.
//

import Foundation

protocol CalendarVMContract {
    var day: String { get }
    var date: String { get }
    var year: String { get }
}

class CalendarVM: CalendarVMContract {

    // MARK: private variables
    
    private let today = Date()
    private let dateFormatter = DateFormatter()

    // MARK: public variables

    var day: String {
        dateFormatter.weekdaySymbols[Calendar.current.component(.weekday, from: today) - 1]
    }

    var date: String {
        dateFormatter.setLocalizedDateFormatFromTemplate("MMM d")
        return dateFormatter.string(from: today)
    }

    var year: String {
        String(Calendar.current.component(.year, from: today))
    }
}
