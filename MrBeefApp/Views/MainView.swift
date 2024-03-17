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
                        Image(systemName: "1.circle")
                        Text("First")
                           
                    }
                    
                
                Text("Second tab")
                    .tabItem {
                        Image(systemName: "2.circle")
                        Text("second")
                    }
                
                Text("three tab")
                    .tabItem {
                        Image(systemName: "3.circle")
                        Text("three")
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
            GroupImage()
                .tabItem{Label("Explore", systemImage: "magnifyingglass")
                    
                }
        }
    }
}
