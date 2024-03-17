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
            VStack {
                SearchAndFilterBar()
                
                Text("LISTA")
                    .foregroundColor(.gray)
                GroupImage()
                    .tabItem{ Label("Explore", systemImage: "magnifyingglass")
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
