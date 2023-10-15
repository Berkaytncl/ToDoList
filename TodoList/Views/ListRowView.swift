//
//  ListRowView.swift
//  TodoList
//
//  Created by Berkay Tuncel on 15.10.2023.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
    Group {
        ListRowView(item: ItemModel(title: "First item!", isCompleted: false))
        ListRowView(item: ItemModel(title: "Second item.", isCompleted: true))
    }
    .previewLayout(.sizeThatFits)
}
