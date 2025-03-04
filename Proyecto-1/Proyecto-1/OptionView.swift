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
                Text("Lista de Items a la venta")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(8)
            }
            
            // Imagen
            NavigationLink(destination: Carrito(viewModel: viewModel)){
                Text("Carrito Yongo")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(8)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
