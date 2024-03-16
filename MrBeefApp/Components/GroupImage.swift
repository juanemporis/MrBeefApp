//
//  GroupImage.swift
//  MrBeefApp
//
//  Created by macbook on 3/16/24.
//

import SwiftUI

struct GroupImage: View {
    let imageNames = ["imagen1", "imagen2", "imagen3", "imagen4", "imagen5"]
       let captions = ["Texto 1", "Texto 2", "Texto 3", "Texto 4", "Texto 5"]
    
        var body: some View {
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    ForEach(imageNames.indices, id: \.self) { index in
                        
                        Image("hamburguesa")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                        
                        Text("Texto \(index)")
                                                    .font(.headline)
                                                    .foregroundColor(.white)
                                                    .padding(8)
                                                    .background(Color.black.opacity(0.5))
                                                    .cornerRadius(10)
                                                    .padding(.top, -30)
                    }
                }
                .padding()
            }
        }
}

struct GroupImage_Previews: PreviewProvider {
    static var previews: some View {
        GroupImage()
    }
}
