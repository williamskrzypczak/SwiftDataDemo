//
//  ContentView.swift
//  SwiftDataDemo
//
//  Created by Bill Skrzypczak on 10/20/24.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) private var context
    @Query private var items: [DataItem]
    
    var body: some View {
        VStack {
            Text("Tap to add a new DataItem")
            Button(action: addItem) {
                Text("Add Item")
            }
            List {
                ForEach(items) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Button(action: { updateItem(item) }) {
                            Image(systemName: "arrow.triangle.2.circlepath")
                        }
                    }
                }
                .onDelete(perform: deleteItem)
            }
        }
        .padding()
    }
    
    // Function to add a new item to the data context
    private func addItem() {
        let newItem = DataItem(name: "Test Item")
        context.insert(newItem)
    }
    
    // Function to delete an item from the data context
    private func deleteItem(at offsets: IndexSet) {
        for index in offsets {
            let itemToDelete = items[index]
            context.delete(itemToDelete)
        }
    }
    
    // Function to update an item in the data context
    private func updateItem(_ item: DataItem) {
        item.name = "Updated Item"
        try? context.save()
    }
}

#Preview {
    ContentView()
}
