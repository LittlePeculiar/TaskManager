//
//  TaskListView.swift
//  TaskManager
//
//  Created by Gina Mullins on 10/26/20.
//

import SwiftUI

struct TaskListView : View {

    @ObservedObject var viewModel : TasksViewModel = TasksViewModel()

    var body : some View {
        VStack {
            HStack {
                Button(action: {
                    viewModel.loadPending()
                }) {
                    Text("Pending")
                }
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(viewModel.selectedColor(type: .pending))

                Button(action: {
                    viewModel.loadCompleted()
                }) {
                    Text("Completed")
                }
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(viewModel.selectedColor(type: .completed))

                Spacer()
            }

            List(self.viewModel.tasks, id: \.self) { task in
                TaskCellView(task: task)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .padding(10)
            .background(RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .shadow(color: .gray, radius: 2, x: 0, y: 0))
        }
    }
}
