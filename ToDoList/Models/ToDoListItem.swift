//
//  ToDoListItem.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool

    mutating func setDone(_ state: Bool){
        isDone = state
    }
}
