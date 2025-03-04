//
//  ContentView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 19/02/25.
//

import SwiftUI

struct Carrito: View {
    @StateObject var viewModel: ItemViewModel
    
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
            Text("Lista de Items a comprar")
                .font(.headline)
                .foregroundStyle(.blue)
            List{
                ForEach(viewModel.buyList){
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
                    .disabled(viewModel.buyList.isEmpty)
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
