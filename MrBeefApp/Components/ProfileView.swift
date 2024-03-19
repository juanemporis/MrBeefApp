//
//  ProfileView.swift
//  MrBeefApp
//
//  Created by macbook on 3/18/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Group {
                Text("Nombre del Negocio")
                    .padding(.top, 1)
                TextFieldView(text: .constant(""))
                
                Text("Email")
                    .padding(.top, 1)
                TextFieldView(text: .constant(""))
                
                Text("Nombre unico del negocio")
                    .padding(.top, 1)
                TextFieldView(text: .constant(""))
                
                Text("Numero de Contacto")
                    .padding(.top, 1)
                TextFieldView(text: .constant(""))
                
                Text("Direccion")
                    .padding(.top, 1)
                TextFieldView(text: .constant(""))
            }
            
            Group {
                Text("Descripcion")
                    .padding(.top, 1)
                TextFieldView(text: .constant(""))
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
