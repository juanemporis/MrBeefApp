//
//  CreateProductView.swift
//  MrBeefApp
//
//  Created by macbook on 27/03/24.
//

import SwiftUI

struct CreateProductView: View {
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea(.all)
            ScrollView {
                
                VStack {
                    LogoView()
                    Text("Sube tu foto de perfil, recomendamos que tu imagen sea de 400X400px.")
                        .padding()
                    Text("Crear un Producto para tu Negocio:")
                        .bold()
                    
                    VStack (alignment: .leading) {

                            Text("Nombre del Producto")
                                .padding(.top, 1)
                            TextFieldView(text: .constant(""))
                            
                            Text("Costo")
                                .padding(.top, 1)
                            TextFieldView(text: .constant(""))
                            
                            Text("Descripcion")
                                .padding(.top, 1)
                            TextFieldView(text: .constant(""))
                        
                        }
                    ButtonView(text: "Crear Producto de Negocio") {
                    }
                    .padding()
                    
                    Rectangle()
                      .fill(Color.black)
                      .frame(height: 1)
                    
                    VStack(alignment: .leading,spacing: 15) {
                  
                        Text("Eliminar Cuenta")
                             .foregroundColor(.red)
                             .bold()
                             
                        
                         Text("Estas seguro que deseas eliminar el perfil de tu negocio? , recuerda que se borraran todos los datos de tu perfil.")
                            
                         
                         DeleteButtonView(text:"Eliminar") {
                             
                         }
                                      
                    
                    }
                }
            }
        }
    }
}

#Preview {
    CreateProductView()
}
extension CreateProductView {
    
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
