//
//  AddView.swift
//  TodoList
//
//  Created by Berkay Tuncel on 15.10.2023.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button {
                    
                } label: {
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
    }
}

#Preview {
    NavigationStack {
        AddView()
    }
}
