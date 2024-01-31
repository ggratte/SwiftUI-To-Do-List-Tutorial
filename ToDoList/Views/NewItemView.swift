//
//  NewItemView.swift
//  ToDoList
//
//  Created by Göran Gratte on 2024-01-29.
//

import SwiftUI

struct NewItemView: View {

    @ObservedObject var VM = NewItemViewVM()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack{
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 20)

            Form {
                TextField("Title", text: $VM.title)

                DatePicker("Due Date", selection: $VM.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())

                TLButton(title: "Save", background: .pink){
                    if VM.canSave {
                        VM.save()
                        newItemPresented = false
                    } else {
                        VM.showAlert = true
                    }
                }
                .padding()
            }
            .alert(isPresented: $VM.showAlert){
                Alert(title: Text("Error"), message: Text( "Please fill in all fields and select todo date today or newer"))
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {return true}, set: {_ in
    }))
}
