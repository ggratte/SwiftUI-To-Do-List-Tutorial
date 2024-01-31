//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationView{
            VStack{

            }
            .navigationTitle("To Do List")
            .toolbar{
                Button{
                    // action
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}


#Preview {
    ToDoListView()
}
