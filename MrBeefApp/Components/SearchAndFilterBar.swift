//
//  SearchAndFilterBar.swift
//  MrBeefApp
//
//  Created by macbook on 3/16/24.
//

import SwiftUI

struct SearchAndFilterBar: View {
    @State private var searchText = ""
    
    var body: some View {
        
        HStack{
            ZStack {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.gray)
                    .padding(.leading, 15)
            }
            
            TextField("Donde quieres comer hoy?", text: $searchText)
                .padding(10)
                .padding(.leading,5)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .frame(maxWidth: 250)
                .onTapGesture {
                    
                    searchText = ""
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct SearchAndFilterBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchAndFilterBar()
    }
}
