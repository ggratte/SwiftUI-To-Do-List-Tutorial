//
//  User.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
