//
//  TodoListApp.swift
//  TodoList
//
//  Created by Berkay Tuncel on 15.10.2023.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Model for View
 */

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
        }
    }
}
