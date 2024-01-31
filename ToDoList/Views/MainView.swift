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
            accountView

        } else {
            LoginView()
        }

        
    }

    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: VM.currentUserId)
                .tabItem{Label("Home", systemImage: "house")}

            ProfileView()
                .tabItem{Label("Profile", systemImage: "person.circle")}
        }
    }
}

#Preview {
    MainView()
}
