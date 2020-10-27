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
                    // todo
                    print("delete tapped")
                }) {
                    Text("X")
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color.red)
                        .background(Color(red: 255/255, green: 215/255, blue: 213/255))
                        .clipShape(Circle())
                }

                Text(task.formattedDate())

                Button(action: {
                    // todo
                    print("open calendar picker")
                }) {
                    Image("calendar")
                        .padding(5)
                        .background(Circle().stroke(lineWidth: 2))
                }
            }
            HStack(alignment: .center) {
                Button(action: {
                    // todo
                    print("low priority tapped")
                }) {
                    Text("Low")
                        .font(.system(size: 16, weight: .light, design: .rounded))
                        .foregroundColor(Color.white)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 30)
                        .padding(10)
                        .background(Color(red: 95/255, green: 205/255, blue: 141/255))
                        .cornerRadius(10)
                }
                Button(action: {
                    // todo
                    print("medium priority tapped")
                }) {
                    Text("Medium")
                        .font(.system(size: 16, weight: .light, design: .rounded))
                        .foregroundColor(Color.white)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 30)
                        .padding(10)
                        .background(Color(red: 251/255, green: 131/255, blue: 51/255))
                        .cornerRadius(10)
                }
                Button(action: {
                    // todo
                    print("high priority tapped")
                }) {
                    Text("High")
                        .font(.system(size: 16, weight: .light, design: .rounded))
                        .foregroundColor(Color.white)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 30)
                        .padding(10)
                        .background(Color(red: 255/255, green: 97/255, blue: 89/255))
                        .cornerRadius(10)
                }
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
}
