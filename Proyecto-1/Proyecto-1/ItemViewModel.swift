//
//  ItemViewModel.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 28/02/25.
//

import SwiftUI
import MapKit

class ItemViewModel: ObservableObject {
    // Define properties and functions here
    @Published public var itemList: [Item] = [
        Item(name: "Nombre del prodoto", description: "Descripcion del producto\nLalalala lala el pepe el pepe el pepe este es un super bloque de texto yeah lets go", price: "500.49", image: UIImage(named: "Cat"), location: CLLocationCoordinate2D(latitude: 37.5, longitude: 49.5)),
    ]
    
    func addItem(name: String, description: String, price: String, image: UIImage?, location: CLLocationCoordinate2D?) {
        let newItem = Item(name: name, description: description, price: price, image: image, location: location)
        itemList.append(newItem)
    }
}
