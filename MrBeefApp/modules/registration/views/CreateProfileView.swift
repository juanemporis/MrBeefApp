//
//  CreateProfileView.swift
//  MrBeefApp
//
//  Created by macbook on 3/17/24.
//

import SwiftUI

struct CreateProfileView: View {
    
    var body: some View {
        
        ZStack {
            Color.white.ignoresSafeArea(.all)
            ScrollView {
                
                VStack {
                    LogoView()
                    Text("Sube tu foto de perfil, recomendamos que tu imagen sea de 400X400px.")
                        .padding()
                    Text("Crear el Perfil de un Negocio:")
                        .bold()
                    
                    ProfileView()
                        .padding()
                    
                    ButtonView(text: "Eliminar") {
                        
                    }
                    .background()
                }
            }
            .clipped()
        }
    }
}
struct CreateProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CreateProfileView()
    }
}

extension CreateProfileView {
    
    struct LogoView: View {
        var body: some View {
            Image("logo.mrbeef")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .clipped()
                .padding()
        }
    }
}


