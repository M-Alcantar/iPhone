//
//  ItemView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 19/02/25.
//

import SwiftUI

struct ItemListView: View {
    /*
    @State var item : Item
    
    var body: some View {
        let screenWidth = UIScreen.main.bounds.width
        
        ScrollView {
            VStack(spacing: 20) {
                HStack(){
                    VStack(alignment: .leading){
                        Text(item.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .padding()
                            .frame(width: screenWidth * 0.63, alignment: .leading)
                    }
                    
                    VStack(alignment: .center){
                        Text("$" + item.price)
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(5)
                            .background(Color.green)
                            .cornerRadius(5)
                            .frame(alignment: .trailing)
                    }
                }
                    .frame(maxWidth: .infinity)
                    .background(LinearGradient(colors: [Color.green, Color.pink, Color.brown], startPoint: .leading, endPoint: .trailing))
                    .shadow(radius: 3)
                
                VStack(alignment: .center, spacing: 10){
                    Text(item.price)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }
            }
        }
    }
     */
        @State private var items: [Item] = [
        ]
        
        @State private var showAddItemView:Bool = false
        
        var body: some View {
            NavigationView {
                List {
                    ForEach(items) { item in
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

