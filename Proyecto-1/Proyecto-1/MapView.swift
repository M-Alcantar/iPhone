//
//  MapView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 24/02/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State var region = MKCoordinateRegion()
    
    var body: some View{
        Map(coordinateRegion: $region, showsUserLocation: true)
            .edgesIgnoringSafeArea(.all)
    }
}
