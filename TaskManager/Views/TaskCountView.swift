//
//  TaskCountView.swift
//  TaskManager
//
//  Created by Gina Mullins on 10/25/20.
//

import SwiftUI

struct TaskCountView: View {

    var count: Int

    var body: some View {
        VStack {
            Text("\(count)")
                .font(.system(size: 64, weight: .heavy, design: .rounded))
                .foregroundColor(Color(red: 38/255, green: 90/255, blue: 136/255))
            Text("Tasks")
                .font(.system(size: 16, weight: .light, design: .rounded))
                .foregroundColor(Color.black)
                .padding(10)
                .background(Color(red: 241/255, green: 241/255, blue: 241/255))
                .cornerRadius(10)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
        .padding(20)
        .background(RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .shadow(color: .gray, radius: 2, x: 0, y: 0))
    }
}
