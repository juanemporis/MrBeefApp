//
//  prueba.swift
//  MrBeefApp
//
//  Created by macbook on 3/17/24.
//

import SwiftUI

struct prueba: View {
    
    @State private var searchText = ""
       @State private var isEditing = false
    
    var body: some View {
         HStack {
             Image(systemName: "magnifyingglass")
                 .foregroundStyle(.gray)
             VStack {
                 TextField("Donde quieres comer hoy?", text: $searchText)
                     .padding(7)
                     .padding(.horizontal, 25)
                     .background(Color(.systemGray6))
                     .cornerRadius(8)
                     .padding(.horizontal, 60)
                     .onTapGesture {
                         isEditing = true
                         searchText = ""
                 }
             }

             if isEditing {
                 Button(action: {
                     isEditing = false
                     searchText = ""
                     // Realizar la acción de búsqueda aquí con el valor de searchText
                 }) {
                     Text("Cancelar")
                     
                         .foregroundStyle(.gray)
                 }
                 .padding(.trailing, 10)
                
             }
         }
     }
 }

struct prueba_Previews: PreviewProvider {
    static var previews: some View {
        prueba()
    }
}
