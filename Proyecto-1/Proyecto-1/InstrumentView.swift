//
//  InstrumentView.swift
//  Proyecto-1
//
//  Created by CETYS Universidad  on 19/02/25.
//

import SwiftUI
import AVFoundation

struct InstrumentView: View {
    @State private var instrument = Instrument(name: "Saxophong", description: "I playa de saxaphone", price: 500.49)
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text(instrument.name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(LinearGradient(colors: [Color.green, Color.pink, Color.brown], startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(12)
                    .shadow(radius: 10)
                
                VStack(alignment: .center, spacing: 10){
                    Text(instrument.price.formatted())
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    Text(instrument.description)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    InstrumentView()
}
