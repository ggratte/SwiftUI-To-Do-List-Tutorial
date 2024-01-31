//
//  ToDoListViewVM.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import Foundation
import FirebaseFirestore

/// ViewModel for list of items view
/// Primary tab
class ToDoListViewVM: ObservableObject {

    @Published var showingNewItemView: Bool = false

    private let userId: String

    init(userId: String){
        self.userId = userId
    }

    /// Delete to do list item
    /// - Parameter id: Item id to delete
    func delete(itemId: String) {
        let db = Firestore.firestore()

        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(itemId)
            .delete()
    }
}
