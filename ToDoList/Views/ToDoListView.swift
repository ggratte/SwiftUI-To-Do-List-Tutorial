//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import SwiftUI
import FirebaseFirestoreSwift

struct ToDoListView: View {

    @StateObject var VM: ToDoListViewVM
    @FirestoreQuery var items: [ToDoListItem]

    init(userId: String){
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._VM = StateObject(wrappedValue: ToDoListViewVM(userId: userId))
    }
    var body: some View {
        NavigationView{
            VStack{
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions{
                            Button ("Delete"){
                                VM.delete(itemId: item.id)
                            }
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
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
    ToDoListView(userId: "9ikWhUpCXcRBldE8aZWN9T6xclE2")
}
