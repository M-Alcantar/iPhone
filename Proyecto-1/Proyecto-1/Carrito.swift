//
//  ContentView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 19/02/25.
//

import SwiftUI

struct Carrito: View {
    @State private var items: [Item] = [
    Item(name: "Gato 10,000",
         description: "Pues Nomas", price:"100"),
    Item(name: "El Yongo Primordial",
         description: "Holy Grail of Yonginess", price:"-1")
    ]
    @State private var showItemDetailView:Bool = false
    
    var body: some View {
        
        VStack {
            Image(systemName: "triangle")
                .imageScale(.small)
                .foregroundStyle(.yellow)
            Text("Carrito Yongo")
            Image(systemName: "square")
                .imageScale(.small)
                .foregroundStyle(.blue)
        }
        .padding()
        .position(CGPoint(x: 200, y: 80))
        
        VStack{
            Text("Lista de Yongos Enamorados <3")
                .font(.headline)
                .foregroundStyle(.blue)
            List{
                ForEach(items){
                    item in
                    NavigationLink(destination: ItemDetailView(item: item)) {
                        Text(item.name)
                    }
                }
            }
        }
        .padding()
        .cornerRadius(8)
        .position(CGPoint(x: 200, y: 0))
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                Button(action: {
                    showItemDetailView = true
                }) {
                    Image(systemName: "plus")
                }
            }
            ToolbarItem(placement: .navigationBarLeading){
                EditButton()
            }
        }
        
        VStack{
            
            VStack{
                // Volver
                NavigationLink(destination: OptionView()){
                    Text("Comprar")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(12)
                }
                
                // Volver
                NavigationLink(destination: OptionView()){
                    Text("Volver")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(12)
                        .foregroundStyle(.white)
                    }
            }
        }
    }
}

#Preview {
    Carrito()
}
