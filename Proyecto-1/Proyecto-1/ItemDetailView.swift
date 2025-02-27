//
//  ItemView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 19/02/25.
//

import SwiftUI

struct ItemView: View {
    @State var item: Item
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text(item.name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(LinearGradient(colors: [Color.green, Color.pink, Color.brown], startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(12)
                    .shadow(radius: 10)
                
                VStack(alignment: .center, spacing: 10){
                    Text(item.price)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    Text(item.description)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .padding()
                }
            }
        }
    }
}
/*
#Preview {
    ItemView(item: Item(name: "Item 1", description: "Lorem ipsum dolor sit amet consectetur adipisicing elit.", price: "100"))
}
*/
