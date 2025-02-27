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
            NavigationLink(destination: ItemListView(item: Item(name: "Nombre del prodoto", description: "Descripcion del producto\nLalalala lala el pepe el pepe el pepe este es un super bloque de texto yeah lets go", price: "500.49", image: UIImage(named: "Cat")))){
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
