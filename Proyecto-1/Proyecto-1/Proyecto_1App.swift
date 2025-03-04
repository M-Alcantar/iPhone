//
//  Proyecto_1App.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 19/02/25.
//

import SwiftUI

@main
struct Proyecto_1App: App {
    @StateObject private var itemViewModel = ItemViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView(viewModel: itemViewModel)
        }
    }
}
