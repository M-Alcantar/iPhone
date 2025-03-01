//
//  OptionView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 24/02/25.
//

import SwiftUI

struct OptionView: View{
    var body: some View{
        VStack{
            // Ubicacion
            NavigationLink(destination: ItemListView()){
                Text("Lista de cosas obtenibles")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(8)
            }
            
            // Imagen
            NavigationLink(destination: Carrito()){
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
