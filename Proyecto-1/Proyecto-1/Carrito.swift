//
//  ContentView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 19/02/25.
//

import SwiftUI

struct Carrito: View {
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
