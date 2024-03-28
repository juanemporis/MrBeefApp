//
//  ProfileView.swift
//  MrBeefApp
//
//  Created by macbook on 3/18/24.
//

import SwiftUI

struct ProfileView: View {
    var text: String
    
    var body: some View {
        
        
        VStack (alignment: .leading) {
            
                Text(text)
                    .padding(.top, 1)
                TextFieldView(text: .constant(""))
            
         
                
            }
            
           
        }
    }


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(text:"label")
    }
}
