//
//  OptionView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 24/02/25.
//

import SwiftUI

struct OptionView: View{
    @StateObject var viewModel: ItemViewModel
    
    var body: some View{
        VStack{
            // Ubicacion
            NavigationLink(destination: ItemListView(viewModel: viewModel)){
                Text("Lista de cosas obtenibles")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(8)
            }
            
            // Imagen
            NavigationLink(destination: Carrito(viewModel: viewModel)){
                Text("Carritosaurio")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(8)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
