//
//  SearchAndFilterBar.swift
//  MrBeefApp
//
//  Created by macbook on 3/16/24.
//

import SwiftUI

struct SearchAndFilterBar: View {
    
    @Binding var searchText: String
    
    var body: some View {
        
        ZStack(alignment: .trailing) {
            
            TextField("Que quieres comer hoy?", text: $searchText)
                .padding(10)
                .padding(.leading)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .onTapGesture {
                    
                }
            Image(systemName: "magnifyingglass")
                .foregroundStyle(.primary)
                .padding(.trailing)
        }
    }
}

struct SearchAndFilterBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchAndFilterBar(searchText: .constant(""))
    }
}
