//
//  ItemView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 19/02/25.
//

import SwiftUI

struct ItemView: View {
    @State var item : Item
    
    var body: some View {
        let screenWidth = UIScreen.main.bounds.width
        
        ScrollView {
            VStack(spacing: 20) {
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
                    .background(LinearGradient(colors: [Color.green, Color.pink, Color.brown], startPoint: .leading, endPoint: .trailing))
                    .shadow(radius: 3)
                
                VStack(alignment: .center, spacing: 10){
                    Text(item.price)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }
            }
        }
    }
}
    
#Preview {
    ItemView(item: Item(name: "Nombre del prodoto", description: "Descripcion del producto", price: "500.49", image: UIImage(systemName: "photo")))
}

#Preview {
    ItemListView()
}
