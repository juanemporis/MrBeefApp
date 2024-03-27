//
//  MrBeefView.swift
//  MrBeefApp
//
//  Created by macbook on 26/03/24.
//

import SwiftUI

struct MrBeefView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Image("fondo.beef")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .edgesIgnoringSafeArea(.top)
                .opacity(0.8)
            
            VStack(alignment: .leading, spacing: 20) {
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
                        .foregroundColor(.white)
                        .bold()
                        .background(Color.gray.opacity(0.5))
                        .cornerRadius(7)
                }
                
                Text("Carta")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                LetterView()
            }
            .padding()
            .offset(x: -10, y: 80)
        }
        .padding(.top, -1)
    }
}


#Preview {
    MrBeefView()
}
