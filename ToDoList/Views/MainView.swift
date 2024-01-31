//
//  ContentView.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import SwiftUI

struct MainView: View {

    @StateObject var VM = MainViewVM()
    var body: some View {
        
        if VM.isSignedIn && !VM.currentUserId.isEmpty {
            TabView {
                ToDoListView()
                    .tabItem{Label("Home", systemImage: "house")}

                ProfileView()
                    .tabItem{Label("Profile", systemImage: "person.circle")}
            }

        } else {
            LoginView()
        }

        
    }
}

#Preview {
    MainView()
}
