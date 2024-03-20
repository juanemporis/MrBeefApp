//
//  RegisterView.swift
//  MrBeefApp
//
//  Created by macbook on 3/15/24.
//

import SwiftUI

struct SignInView: View {
    
    var body: some View {
        
        ZStack {
            
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack {
                
                LogoView(image: "logo.mrbeef")
                    .frame(width: 100)
                
                VStack(alignment: .leading) {
                    LabelView(text:"Usuario")
                    TextFieldView(text: .constant(""))
                }
                .frame(width: .infinity)
                .padding(.horizontal)
                
                VStack(alignment: .leading) {
                    LabelView(text:"Contraseña")
                    SecureFieldView(text: .constant(""))
                }
                .frame(width: .infinity)
                .padding(.horizontal)
                .padding(.top)
                
                ButtonView(text: "Iniciar sesion"){
                    debugPrint("Se creo una cuenta")
                }
                .padding(.top)
                
                HStack {
                    Text("Necesitas una cuenta?")
                    Button {
                        debugPrint("redireccionar a crear")
                    } label: {
                        LabelView(text: "Crear cuenta")
                    }
                    Spacer()
                }
                .padding()
                .padding(.top)
            }
        }
        
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
