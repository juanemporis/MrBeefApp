//
//  MainView.swift
//  MrBeefApp
//
//  Created by macbook on 3/15/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        ZStack {
            Color(.white).edgesIgnoringSafeArea(.all)
            TabView {
                InicioView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Inicio")
                    }
                
                Text("Historial de pedidos")
                    .tabItem {
                        Image(systemName: "bag")
                        Text("Pedidos")
                    }
                
                SignInView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Mi Perfil")
                    }
            }
            
        }
    }
    
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
