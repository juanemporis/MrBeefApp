//
//  LetterView.swift
//  MrBeefApp
//
//  Created by macbook on 26/03/24.
//

import SwiftUI

struct LetterView: View {
    let imageNames = ["hamburguesa", "hamburguesa1", "hamburguesa2", "hamburguesa3"]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ForEach(imageNames, id: \.self) { imageName in
                    HStack(spacing: 10) {
                        Image(imageName)
                            .resizable()
                            .cornerRadius(10)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text(self.getTitle(for: imageName))
                                .font(.headline)
                                .foregroundColor(.black)
                                .bold()
                            
                            Text("Descripción del plato")
                                .font(.subheadline)
                                .foregroundColor(.black)
                            
                            HStack {
                                Image(systemName: "bag")
                                Text("$5 USD")
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
    
    func getTitle(for imageName: String) -> String {
        switch imageName {
            case "hamburguesa":
                return "Hamburguesa"
            case "hamburguesa1":
                return "Hamburguesa Clasica"
            case "hamburguesa2":
                return "Hamburguesa Especial"
            case "hamburguesa3":
                return "Hamburguesa Super"
            default:
                return ""
        }
    }
}


#Preview {
    LetterView()
}
