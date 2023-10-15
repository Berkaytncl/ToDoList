//
//  ItemModel.swift
//  TodoList
//
//  Created by Berkay Tuncel on 15.10.2023.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
