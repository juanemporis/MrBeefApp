//
//  CreateProfileView.swift
//  MrBeefApp
//
//  Created by macbook on 3/17/24.
//

import SwiftUI

struct CreateProfileView: View {
    let gradiant = Gradient(colors: [.white])
    @State private var businessName = ""
    @State private var email = ""
    @State private var uniqueBusinessName = ""
    @State private var contactNumber = ""
    @State private var direction = ""
    @State private var description = ""
    
    var body: some View {
        ScrollView{
        VStack{
            HStack{
                Spacer()
                
                VStack{
                    Image("logo.mrbeef")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .clipped()
                        .padding(.top, 50)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Sube tu foto de perfil, recomendamos que tu imagen sea de 400X400px.")
                        
                        Text("Crear el Perfil de un Negocio:")
                            .bold()
                            .padding(.top, 5)
                        
                        
                        Group {
                            
                            Text("Nombre del Negocio")
                                .padding(.top, 1)
                            TextFieldView(text: $businessName)
                               
                            Text("Email")
                                .padding(.top, 1)
                            TextFieldView(text: $email)
                            
                            Text("Nombre unico del negocio")
                                .padding(.top, 1)
                            TextFieldView(text: $uniqueBusinessName)
                            
                            Text("Numero de Contacto")
                                .padding(.top, 1)
                            TextFieldView(text: $contactNumber)
                            
                            Text("Direccion")
                                .padding(.top, 1)
                            TextFieldView(text: $direction)
                            
                            Text("Descripcion")
                                .padding(.top, 1)
                            TextFieldView(text: $description)
                        }
                    }
                    }
                    
                    
                }
                Spacer()
                
            }
            .padding()
            
            
        }
        .background(LinearGradient(gradient: gradiant, startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
        
    }
}
struct CreateProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CreateProfileView()
    }
}


