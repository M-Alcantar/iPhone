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
            NavigationLink(destination: MapView()){
                Text("Ver mi ubicacion actual")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(8)
            }
            
            // Imagen
            NavigationLink(destination: ImagePickerView()){
                Text("Seleccionar una imagen")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(8)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
