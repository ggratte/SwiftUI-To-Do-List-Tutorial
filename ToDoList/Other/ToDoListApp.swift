//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
