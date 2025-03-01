//
//  MainView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 24/02/25.
//

import SwiftUI

struct MainView: View {
    @StateObject private var permissionViewModel = PermissionsViewModel()
    
    var body: some View {
        NavigationStack{
            VStack(spacing:30){
                Spacer()
                Text("BIENVENIDO A YONGOLIBRE!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(LinearGradient(colors: [Color.blue, Color.purple, Color.red, Color.yellow], startPoint: .leading, endPoint: .trailing))
                    .shadow(radius: 3)
                
                Text("Antes de continuar, permite acceder a la ubicación, galería y cámara")
                    .multilineTextAlignment(.center)
                VStack(spacing: 20){
                    
                    // Camara
                    Button(action: {
                        permissionViewModel.requestCameraAccess()
                    }){
                        Text("Permitir acceso a camara.")
                    }
                    .disabled(permissionViewModel.cameraGranted)
                    
                    // Biblioteca
                    Button(action: {
                        permissionViewModel.requestPhotoLibraryAccess()
                    }){
                        Text("Permitir acceso a la libreria.")
                    }
                    .disabled(permissionViewModel.photoLibraryGranted)
                    
                    // Ubicacion
                    Button(action: {
                        permissionViewModel.requestLocationAccess()
                    }){
                        Text("Permitir acceso a la ubicacion.")
                    }
                    .disabled(permissionViewModel.locationGranted)
                }
                Spacer()
                NavigationLink("Proceder", value: "OptionView")
                    .disabled(!permissionViewModel.areAllPermissionsGranted)
                    .tint(.red)
            }
            .navigationDestination(for: String.self){ value in
                if value == "OptionView"{
                    OptionView()
                }
            }
        }
    }
}

#Preview {
    MainView()
}
