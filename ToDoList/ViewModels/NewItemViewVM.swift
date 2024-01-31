//
//  NewItemViewVM.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import Foundation

class NewItemViewVM: ObservableObject {

    @Published var title = ""
    @Published var  dueDate = Date()
    @Published var showAlert = false
    init(){
        
    }

    func save(){
        
    }

    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else { return false}

        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        return true
    }
}
