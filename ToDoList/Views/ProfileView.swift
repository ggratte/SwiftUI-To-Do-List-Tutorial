//
//  ProfileView.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import SwiftUI

struct ProfileView: View {

    @StateObject var VM = ProfileViewVM()
    
    var body: some View {
        NavigationView{
            VStack{
                if let user = VM.user {
                    profile(user: user)
                } else {
                    Text("Loading...")
                }
            }
            .navigationTitle("Profile")
        }.onAppear{
            VM.fetchUser()
        }
    }

    @ViewBuilder
    func profile(user: User) -> some View {
        // Avatar
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .frame(width: 125, height: 125)
            .padding()


        // Info: Name, Email, Member since
        VStack(alignment: .leading) {
            HStack{
                Text("Name; ")
                    .bold()
                Text(user.name)
            }.padding()
            HStack{
                Text("Email; ")
                    .bold()
                Text(user.email)
            }.padding()
            HStack{
                Text("Member Since; ")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }.padding()
        }
        .padding()

        // Sign out
        Button("Log Out") {
            VM.logOut()
        }
        .tint(.red)
        .padding()
        Spacer()
    }
}

#Preview {
    ProfileView()
}
