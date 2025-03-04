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
        Item(name: "Gato Yongo", description: "Este gato esta para comprar. Esta un poco yongo, pero no pasa nada.", price: "500.49", image: UIImage(named: "Cat"), location: CLLocationCoordinate2D(latitude: 37.5, longitude: 49.5)),
        Item(name: "Super Wash", description: "Un producto legitimo que limpia literalmente todo.", price: "333.09", image: UIImage(named: "Super Wash"), location: CLLocationCoordinate2D(latitude: 33, longitude: 43)),
        Item(name: "Lapiz de doble punta", description: "Este lapiz tiene dos puntas; explica el nombre.", price: "45.45", image: UIImage(named: "Double Pencil"), location: CLLocationCoordinate2D(latitude: 37.5, longitude: 49.5)),
        Item(name: "El lenguaje entero de C++", description: "Compra este item para ser dueño de el lenguaje de C++.", price: "1776.13", image: UIImage(named: "cpp buuy"), location: CLLocationCoordinate2D(latitude: 25, longitude: 60))
    ]
    
    @Published public var buyList: [Item] = []
    
    func addItem(name: String, description: String, price: String, image: UIImage?, location: CLLocationCoordinate2D?) {
        let newItem = Item(name: name, description: description, price: price, image: image, location: location)
        itemList.append(newItem)
    }
    
    func buyItem(item: Item) {
        let newItem = item
        buyList.append(newItem)
    }
}
