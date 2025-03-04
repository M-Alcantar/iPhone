//
//  ItemView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 19/02/25.
//

import SwiftUI
import MapKit

struct ItemDetailView: View {
    @StateObject var viewModel: ItemViewModel
    @State var item : Item
    
   @State private var items: [Item] = []
    
    var body: some View {
        let screenWidth = UIScreen.main.bounds.width
        let _ = UIScreen.main.bounds.height
        
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    
                    Spacer(minLength: 0)
                    
                    HStack(){
                        VStack(alignment: .leading){
                            Text(item.name)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(width: screenWidth * 0.63, alignment: .leading)
                        }
                        
                        VStack(alignment: .center){
                            Text("$" + item.price)
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .padding(5)
                                .background(Color.green)
                                .cornerRadius(5)
                                .frame(alignment: .trailing)
                        }
                    }
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(colors: [Color.blue, Color.purple, Color.red, Color.yellow], startPoint: .leading, endPoint: .trailing))
                        .shadow(radius: 3)
                    
                    Text(item.description)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                        .frame(width: screenWidth * 0.9, alignment: .leading)
                        .multilineTextAlignment(.leading)
                    
                    if let image = item.image {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: screenWidth * 0.9)
                            .cornerRadius(12)
                            .padding()
                    }
                    
                    if let location = item.location {
                        NavigationLink(destination: MapView(region: MKCoordinateRegion(center: location, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)))) {
                            Text("Ver ubicación en mapa")
                                .frame(width: screenWidth * 0.7)
                                .padding(10)
                                .background(Color.orange)
                                .foregroundColor(Color.white)
                                .cornerRadius(8)
                        }
                    }
                    
                    NavigationLink(destination: Carrito(viewModel: viewModel)) {
                        HStack {
                            Image(systemName: "cart")
                                .scaledToFit()
                            Text("Añadir al carrito")
                                .font(.title2)
                        }
                            .frame(width: screenWidth * 0.75)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(8)
                    }
                }
            }
        }
    }
}
    
#Preview {
    ItemDetailView(viewModel: ItemViewModel(), item: Item(name: "Nombre del prodoto", description: "Descripcion del producto\nLalalala lala el pepe el pepe el pepe este es un super bloque de texto yeah lets go", price: "500.49", image: UIImage(named: "Cat"), location: CLLocationCoordinate2D(latitude: 37.5, longitude: 49.5)))
}
