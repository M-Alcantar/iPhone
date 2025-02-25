//
//  AddItemView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 24/02/25.
//

import SwiftUI
struct AddItemView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var name = ""
    @State private var description = ""
    @State private var price = ""
    @Binding var items: [Item]
    
    // Nuevos estados
    @State private var userLatitude: Double?
    @State private var userLongitude: Double?
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("What is this Item about?")) {
                    TextField("Name", text: $name)
                    TextField("Description of the item", text: $description)
                    TextField("Price of the item", text: $price)
                }
                // Agrega el boton para agregar imagenes ya se de la galeria o de la camara.
                // Imagen
                NavigationLink(destination: ImagePickerView()){
                    Text("Seleccionar una imagen")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(8)
                }
                
            }
            .navigationTitle("Add new Item")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancel"){
                        presentationMode.wrappedValue.dismiss()
                    }
                }
                
                // Recuerda guardar la ubicacion y la imagen cuando le pique save
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Save"){
                        let newItem = Item(name: name, description: description, price:price)
                        items.append(newItem)
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}

