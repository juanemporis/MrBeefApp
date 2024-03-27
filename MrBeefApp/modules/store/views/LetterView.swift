//
//  LetterView.swift
//  MrBeefApp
//
//  Created by macbook on 26/03/24.
//

import SwiftUI

struct LetterView: View {
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach( 0...20, id: \.self) { it in
                    HStack() {
                        Image(getImage())
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 100)
                            .cornerRadius(10)
                            .clipped()
                        
                        VStack(alignment: .leading) {
                            Text(getTitle())
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
                        Spacer()
                    }
                }
            }
            .padding(.horizontal)
            .padding(.top)
        }
        .clipped()
    }
}

extension LetterView {
    
    func getImage() -> String {
        
        let number = arc4random() % 4
        return "hamburguesa\(number)"
    }
    
    func getTitle() -> String {
        
        let number = arc4random() % 4
        let title = "hamburguesa\(number)"
        
        switch title {
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
