//
//  AddView.swift
//  TodoList
//
//  Created by Berkay Tuncel on 15.10.2023.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.dismiss) var dismissScreen
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.secondarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button(action: saveButtonPressed) {
                    Text("Save".uppercased())
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            .padding(16)
        }
        .navigationTitle("Add an Item 🖋️")
        .alert(alertTitle, isPresented: $showAlert) {}
    }
    
    private func saveButtonPressed() {
        guard textIsAppropriate() else {
            alertTitle = "Your new todo item must be at least 3 characters long!! 😨😰😱"
            showAlert.toggle()
            return
        }
        
        listViewModel.addItem(title: textFieldText)
        dismissScreen.callAsFunction()
    }
    
    private func textIsAppropriate() -> Bool { textFieldText.count >= 3 }
}

#Preview {
    NavigationStack {
        AddView()
    }
    .environmentObject(ListViewModel())
}
