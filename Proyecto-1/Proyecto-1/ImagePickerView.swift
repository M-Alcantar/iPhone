//
//  ImagePickerView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 24/02/25.
//

import SwiftUI

struct ImagePickerView: View {
    @Binding var image: UIImage?
    @State private var showImagePicker = false
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    var body: some View {
        VStack{
            if let image = image {
                Image(uiImage:image)
                    .resizable()
                    .scaledToFit()
                    .frame(height:300)
                    .padding()
            } else {
                Text("No se selecciono ninguna imagen.")
            }
            Button(action: {
                sourceType = .photoLibrary
                showImagePicker = true
            })
            {
                Label("Selecciona una imagen", systemImage:"photo")
            }
            .sheet(isPresented: $showImagePicker){
                ImagePicker(selectedImage: $image, sourceType: sourceType)
            }
        }
    }
}

