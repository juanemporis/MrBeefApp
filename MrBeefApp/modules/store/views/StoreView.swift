//
//  MrBeefView.swift
//  MrBeefApp
//
//  Created by macbook on 26/03/24.
//

import SwiftUI

struct StoreView: View {
    var body: some View {
        ZStack {
            
            Color.white.ignoresSafeArea()
            
            VStack {
                HeaderView()
                LetterView()
            }
            .ignoresSafeArea()
        }
    }
}

extension StoreView {
    
    struct HeaderView: View {
        var body: some View {
            ZStack (alignment: .bottomLeading) {
                
                Image("fondo.beef")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .opacity(0.8)
                
                VStack(alignment: .leading) {
                    Text("Mr.Beef")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("4.7 (+200 calificaciones)")
                            .foregroundColor(.white)
                            .bold()
                        Text("Costo de envío: S/5")
                            .foregroundColor(.white)
                            .bold()
                        Text("ABIERTO HASTA LAS 10:30 PM")
                            .padding(4)
                            .foregroundColor(.white)
                            .bold()
                            .background(Color.gray.opacity(0.5))
                            .cornerRadius(10)
                    }
                }
                .padding(.leading)
                .padding(.bottom)
            }
        }
    }
}


#Preview {
    StoreView()
}


