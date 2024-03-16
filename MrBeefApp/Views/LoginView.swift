//
//  RegisterView.swift
//  MrBeefApp
//
//  Created by macbook on 3/15/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            Color(.black).edgesIgnoringSafeArea(.all)
            VStack(alignment: .center,spacing: 15) {
                LogoView()
                HStack {
                    Spacer()
                    LabelView(text:"Usuario")
                    TextFieldView()
                }
             
                HStack {
                    Spacer()
                    LabelView(text:"Contraseña")
                    SecureFieldView()
                }
              
                        VStack{
                            ButtonView(text: "Crear Cuenta"){
                                debugPrint("Se creo una cuenta")
                            }
                        }
                        .padding(15)
                        VStack{
                            ButtonView(text: "Cancelar"){
                                debugPrint("Se cancelo la operación")
                                    
                            }
                            .offset(y:-20)
                        }
                        
                    
                
                .padding(10)
                
                
            }
            .padding(15)
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
