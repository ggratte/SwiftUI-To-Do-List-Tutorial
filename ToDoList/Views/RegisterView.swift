//
//  RegisterView.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack{
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
        }
        
        Form {
            TextField("Full Name", text: $name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()

            TextField("Email Address", text: $email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                .autocorrectionDisabled()

            TextField("Password", text: $password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            TLButton(title: "Create Account", background: .green) {
                //Attempt registration
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
