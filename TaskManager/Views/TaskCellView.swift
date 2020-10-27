//
//  TaskCellView.swift
//  TaskManager
//
//  Created by Gina Mullins on 10/26/20.
//

import SwiftUI

struct TaskCellView : View {

    var task: Task
    @State var isClosed: Bool = false

    var body : some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack(alignment: .center) {
                Button(action: {
                    toggleClosed()
                }) {
                    Text("")
                }
                RoundedRectangle(cornerRadius: 1)
                                .stroke(selectedColor(), lineWidth: 1)
                                .frame(minWidth: 0, maxWidth: 25, minHeight: 0, maxHeight: 25)

                Text("\(task.taskID). \(task.title)")
                Spacer()
            }
            HStack(alignment: .center) {
                Button(action: {
                    delete()
                }) {
                    Text("X")
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color.red)
                        .background(Color(red: 255/255, green: 215/255, blue: 213/255))
                        .clipShape(Circle())
                }.buttonStyle(PlainButtonStyle())

                Text(task.formattedDate())

                Button(action: {
                    openCalendar()
                }) {
                    Image("calendar")
                        .padding(5)
                        .background(Circle().stroke(lineWidth: 2))
                }.buttonStyle(PlainButtonStyle())
            }
            HStack(alignment: .center) {
                Button(action: {
                    update(priority: Priority.low)
                }) {
                    Text("Low")
                        .font(.system(size: 16, weight: .light, design: .rounded))
                        .foregroundColor(Color.white)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 30)
                        .padding(10)
                        .background(Color(Priority.low.color()))
                        .cornerRadius(10)
                }.buttonStyle(PlainButtonStyle())
                Button(action: {
                    update(priority: Priority.medium)
                }) {
                    Text("Medium")
                        .font(.system(size: 16, weight: .light, design: .rounded))
                        .foregroundColor(Color.white)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 30)
                        .padding(10)
                        .background(Color(Priority.medium.color()))
                        .cornerRadius(10)
                }.buttonStyle(PlainButtonStyle())
                Button(action: {
                    update(priority: Priority.high)
                }) {
                    Text("High")
                        .font(.system(size: 16, weight: .light, design: .rounded))
                        .foregroundColor(Color.white)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 30)
                        .padding(10)
                        .background(Color(Priority.high.color()))
                        .cornerRadius(10)
                }.buttonStyle(PlainButtonStyle())
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
        .padding(5)
        .background(RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .shadow(color: .gray, radius: 1, x: 0, y: 0))
    }

    func selectedColor() -> Color {
        return isClosed ? Color.orange : Color.gray
    }

    func toggleClosed() {
        isClosed.toggle()
    }

    func update(priority: Priority) {
        task.priority = priority
        print("todo - save new priority: \(priority)")
    }

    func delete() {
        print("todo - delete this task")
    }

    func openCalendar() {
        print("todo - open calendar picker and save new date")
    }
}
