//
//  LoginViewVM.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import FirebaseAuth
import Foundation

class LoginViewVM: ObservableObject {

    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""

    init(){
        
    }

    func login(){
        guard validate() else {return}
        Auth.auth().signIn(withEmail: email, password: password)
    }

    private func validate() -> Bool {

        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty && !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "please fill in all fields"
            return false
        }

        guard email.contains("@") && email.contains(".") else {
            errorMessage = "invalid email"
            return false
        }

        return true

    }
}
