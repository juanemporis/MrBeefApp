//
//  CreateProfileView.swift
//  MrBeefApp
//
//  Created by macbook on 3/17/24.
//

import SwiftUI

struct CreateProfileView: View {
    let gradiant = Gradient(colors: [.red,.white])

    
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
                        
                        ProfileView()
                        
                        ButtonView(text: "Crear Perfil de Negocio") {
                            
                        }
                        LabelView(text: "Eliminar Cuenta")
                            .bold()
                        
                        Text("Estas seguro que deseas eliminar el perfil de tu negocio?,recuerda que se borraran todos los datos de tu perfil")
                        
                        DeleteButtonView(text: "Eliminar") {
                            
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


