//
//  RegisterView.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var VM = RegisterViewVM()

    var body: some View {
        VStack{
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
        }
        
        Form {
            TextField("Full Name", text: $VM.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()

            TextField("Email Address", text: $VM.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                .autocorrectionDisabled()

            SecureField("Password", text: $VM.password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            TLButton(title: "Create Account", background: .green) {
                //Attempt registration
                VM.register()
            }
            .padding()
        }
        .offset(y: -50)
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
