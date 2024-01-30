//
//  LoginView.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var VM = LoginViewVM()
    var body: some View {
        NavigationView {
            
            VStack{
                // Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)



                // Login Form
                Form {

                    if !VM.errorMessage.isEmpty {
                        Text(VM.errorMessage)
                            .foregroundColor(.red)
                    }

                    TextField("Email address", text: $VM.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)

                    SecureField("Password", text: $VM.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(title: "Log In", background: .blue) {
                        VM.login()
                    }
                    .padding()
                }
                .offset(y: -50)
                // Create Account
                VStack{
                    Text("New around here?")
                    
                    NavigationLink("Create an account", destination: RegisterView())
                    
                }
                .padding(50)
            }
            Spacer()
            
        }
    }
}

#Preview {
    LoginView()
}
