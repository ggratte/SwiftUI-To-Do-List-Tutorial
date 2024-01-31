//
//  ToDoListViewVM.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import Foundation

/// ViewModel for list of items view
/// Primary tab
class ToDoListViewVM: ObservableObject {

    @Published var showingNewItemView: Bool = false
    init(){}

    func delete(itemId: String) {
        
    }
}
