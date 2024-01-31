//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import SwiftUI

struct ToDoListView: View {

    @StateObject var VM = ToDoListViewVM()

    init(userId: String){
        
    }
    var body: some View {
        NavigationView{
            VStack{

            }
            .navigationTitle("To Do List")
            .toolbar{
                Button{
                    // action
                    VM.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $VM.showingNewItemView) {
                NewItemView(newItemPresented: $VM.showingNewItemView)
            }
        }
    }
}


#Preview {
    ToDoListView(userId: "")
}
