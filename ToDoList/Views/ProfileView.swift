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

            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
