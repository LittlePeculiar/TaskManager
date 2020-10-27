//
//  CalendarView.swift
//  TaskManager
//
//  Created by Gina Mullins on 10/25/20.
//

import SwiftUI

struct CalendarView: View {

    let viewModel = CalendarVM()

    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(viewModel.day)
                .font(.system(size: 16, weight: .light, design: .rounded))
                .foregroundColor(.black)
            Text(viewModel.date)
                .font(.system(size: 28, weight: .medium, design: .rounded))
                .foregroundColor(.black)
            Text(viewModel.year)
                .font(.system(size: 24, weight: .regular, design: .rounded))
                .foregroundColor(.gray)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
        .padding(20)
        .background(RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .shadow(color: .gray, radius: 2, x: 0, y: 0))
    }
}
