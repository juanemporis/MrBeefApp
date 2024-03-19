//
//  ProfileView.swift
//  MrBeefApp
//
//  Created by macbook on 3/18/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        Group {
            Text("Nombre del Negocio")
                .padding(.top, 1)
            TextFieldView()
                
            Text("Email")
                .padding(.top, 1)
            TextFieldView()
            
            Text("Nombre unico del negocio")
                .padding(.top, 1)
            TextFieldView()
            
            Text("Numero de Contacto")
                .padding(.top, 1)
            TextFieldView()
        }
        Group {
            Text("Direccion")
                .padding(.top, 1)
            TextFieldView()
            
            Text("Descripcion")
                .padding(.top, 1)
            TextFieldView()
            
            
        }
            
            
            
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
