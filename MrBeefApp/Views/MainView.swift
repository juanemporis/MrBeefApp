//
//  MainView.swift
//  MrBeefApp
//
//  Created by macbook on 3/15/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        VStack {
            SearchAndFilterBar()
            Text("Categorías")
                .foregroundColor(.black)
            
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    ForEach(1..<10) { index in
                        
                        Image("hamburguesa")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                        
                        Text("Texto \(index)") 
                                                    .font(.headline)
                                                    .foregroundColor(.white)
                                                    .padding(8)
                                                    .background(Color.black.opacity(0.5))
                                                    .cornerRadius(10)
                                                    .padding(.top, -30)
                    }
                }
                .padding()
            }
            
            
        }
            
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}