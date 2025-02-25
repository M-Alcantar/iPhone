//
//  ItemListView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 24/02/25.
//

import SwiftUI
struct ItemListView: View {
    @State private var items: [Item] = [
    Item(name: "Saxophong",
         description: "Ir a Wallmart", price:"599.99"),
    Item(name: "Leer tutorial de SwiftUI",
         description: "Entrar al código y video en Youtube", price:"80")
    ]
    
    @State private var showAddItemView:Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items) { item in
                    NavigationLink(destination: ItemView(item: item)) {
                        Text(item.name)
                    }
                }
                .onDelete(perform: deleteItem)
            }
            .navigationTitle("Lista de productos")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        showAddItemView = true
                    }) {
                        Image(systemName: "plus")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading){
                    EditButton()
                }
            }
            .sheet(isPresented: $showAddItemView) {
                AddItemView(items: $items)
            }
        }
    }
    
    func deleteItem(at offset: IndexSet) {
        items.remove(atOffsets: offset)
    }
}

#Preview {
    ItemListView()
}
