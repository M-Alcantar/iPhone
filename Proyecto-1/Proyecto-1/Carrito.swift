//
//  ContentView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 19/02/25.
//

import SwiftUI

struct Carrito: View {
    @StateObject var viewModel: ItemViewModel
    /*
    @State private var items: [Item] = [
     Item(name: "Gato 10,000",
          description: "Pues Nomas", price:"100"),
     Item(name: "El Yongo Primordial",
          description: "Holy Grail of Yonginess", price:"-1")
     ]
     */
    @State private var items: [Item] = []
    
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
                ForEach(viewModel.itemList){
                    item in
                    NavigationLink(destination: ItemDetailView(viewModel: viewModel, item: item)) {
                        Text(item.name)
                    }
                }
            }
        }
        .padding()
        .cornerRadius(8)
        .position(CGPoint(x: 200, y: 0))
        VStack{
            
            VStack{
                // Comprar
                NavigationLink("Comprar", destination: FinalScreen())
                    .disabled(viewModel.itemList.isEmpty)
                    .tint(.blue)
                
                // Volver
                NavigationLink(destination: OptionView(viewModel: viewModel)){
                    Text("Volver a menu principal")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(12)
                        .foregroundStyle(.white)
                    }
            }
            
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    Carrito(viewModel: ItemViewModel())
}
