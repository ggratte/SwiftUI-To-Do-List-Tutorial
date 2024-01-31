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
            // signed in
            ToDoListView()
        } else {
            LoginView()
        }

        
    }
}

#Preview {
    MainView()
}
