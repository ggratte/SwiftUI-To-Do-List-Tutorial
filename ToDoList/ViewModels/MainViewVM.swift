//
//  MainViewVM.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import FirebaseAuth
import Foundation

class MainViewVM: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?

    init() {
        handler = Auth.auth().addStateDidChangeListener{ [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }

    public var isSignedIn: Bool {
        Auth.auth().currentUser != nil
    }
}
