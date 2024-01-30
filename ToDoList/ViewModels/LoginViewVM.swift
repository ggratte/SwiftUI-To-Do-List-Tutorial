//
//  LoginViewVM.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import Foundation

class LoginViewVM: ObservableObject {

    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""

    init(){
        
    }

    func login(){
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty && !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "please fill in all fields"
            return
        }

        print("called1")
    }

    func validate() {

    }
}
