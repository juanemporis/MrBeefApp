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
                ExtractedView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Inicio")
                    }
                
                Text("Second tab")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Buscar")
                    }
                
                Text("three tab")
                    .tabItem {
                        Image(systemName: "bag")
                        Text("Pedidos")
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

struct ExtractedView: View {
    var body: some View {
        VStack {
            SearchAndFilterBar()
            Text("LISTA")
                .foregroundColor(.gray)
            Spacer()
            GroupImage()
                .tabItem{ Label("Explore", systemImage: "magnifyingglass")
                    
                }
        }
    }
}
