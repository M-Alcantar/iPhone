//
//  Instrument.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 19/02/25.
//

import SwiftUI
import CoreLocation

struct Item: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var price: Double
    var image: [UIImage]?
    var location: CLLocationCoordinate2D?
}
