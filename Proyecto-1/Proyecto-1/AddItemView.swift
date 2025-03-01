//
//  AddItemView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 24/02/25.
//

import SwiftUI
import MapKit

struct AddItemView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var name = ""
    @State private var description = ""
    @State private var price = ""
    @State private var image: UIImage?
    @State private var userLatitude: Double?
    @State private var userLongitude: Double?
    
    @StateObject var viewModel: ItemViewModel
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Que Item quieres vender?")) {
                    TextField("Nombre del item", text: $name)
                    TextField("Descripcion", text: $description)
                    TextField("Precio del item", text: $price)
                }
                // Agrega el boton para agregar imagenes ya se de la galeria o de la camara.
                // Imagen
                NavigationLink(destination: ImagePickerView(image: $image)){
                    Text("Seleccionar una imagen")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(8)
                }
                
                if let image = image {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                }
                
            }
            .navigationTitle("Añadir nuevo item")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancelar"){
                        presentationMode.wrappedValue.dismiss()
                    }
                }
                
                // Recuerda guardar la ubicacion y la imagen cuando le pique save
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Yonguear"){
                        if let image = image {
                            viewModel.addItem(name: name, description: description, price: price, image: image, location: CLLocationCoordinate2D(latitude: 37.5, longitude: 49.5))
                        } else {
                            viewModel.addItem(name: name, description: description, price: price, image: nil, location: CLLocationCoordinate2D(latitude: 37.5, longitude: 49.5))
                        }
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    AddItemView(viewModel: ItemViewModel())
}
