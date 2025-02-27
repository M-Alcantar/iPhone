//
//  ItemView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 19/02/25.
//

import SwiftUI

struct ItemDetailView: View {
    @State var item : Item
    @State private var showMapView: Bool = false
    @StateObject private var permissionsViewModel = PermissionsViewModel()
    
    var body: some View {
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        
        NavigationView {
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
                
                NavigationLink(destination: MapView()) {
                    Text("Drugs")
                        .frame(width: screenWidth * 0.75)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                }
                
                NavigationLink(destination: MapView()) {
                    Text("Grugs")
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
    
#Preview {
    ItemDetailView(item: Item(name: "Nombre del prodoto", description: "Descripcion del producto\nLalalala lala el pepe el pepe el pepe este es un super bloque de texto yeah lets go", price: "500.49", image: UIImage(named: "Cat")))
}
