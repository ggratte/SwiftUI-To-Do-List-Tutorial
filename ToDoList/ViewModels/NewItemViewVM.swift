//
//  NewItemViewVM.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class NewItemViewVM: ObservableObject {

    @Published var title = ""
    @Published var  dueDate = Date()
    @Published var showAlert = false
    init(){
        
    }

    func save(){
        // Get user id
        guard let userId = Auth.auth().currentUser?.uid else {
            return
        }



        // Create model
        let newId = UUID().uuidString
        let newItem = ToDoListItem(id: newId, title: title, dueDate: dueDate.timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: false)

        // Save model
        let db = Firestore.firestore()

        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(newId)
            .setData(newItem.asDictionary())
    }

    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else { return false}

        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        return true
    }
}
