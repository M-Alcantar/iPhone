//
//  ItemView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 19/02/25.
//

import SwiftUI

struct ItemListView: View {
        @State private var showAddItemView:Bool = false
        @StateObject var viewModel: ItemViewModel
        
        var body: some View {
            NavigationView {
                List {
                    ForEach(viewModel.itemList) { item in
                        NavigationLink(destination: ItemDetailView(item: item)) {
                            Text(item.name)
                        }
                    }
                    .onDelete(perform: deleteItem)
                }
                .navigationTitle("Lista de Tareas")
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
                    AddItemView(viewModel: viewModel)
                }
            }
        }
        
        func deleteItem(at offset: IndexSet) {
            items.remove(atOffsets: offset)
        }
    }

    #Preview {
        ItemListView(viewModel: ItemViewModel())
    }

