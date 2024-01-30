//
//  RegisterViewVM.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//
import FirebaseAuth
import Foundation

class RegisterViewVM: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var password: String = ""

    func register(){
        guard validate() else {return}

        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            guard let userId = result?.user.uid else {
                return
            }
        }
    }

    private func validate() -> Bool {
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty &&
                !email.trimmingCharacters(in: .whitespaces).isEmpty &&
                !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }

        guard email.contains("@") && email.contains(".") else { return false }

        guard password.count >= 6 else { return false }

        return true
    }
}
