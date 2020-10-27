//
//  ContentView.swift
//  TaskManager
//
//  Created by Gina Mullins on 10/25/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel : TasksViewModel = TasksViewModel()

    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                CalendarView()
                TaskCountView(count: viewModel.numberOfTasks)
            }

            TaskListView(viewModel: viewModel)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
