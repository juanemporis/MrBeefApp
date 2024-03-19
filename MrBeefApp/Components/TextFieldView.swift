//
//  TextFieldView.swift
//  MrBeefApp
//
//  Created by macbook on 3/15/24.
//

import SwiftUI

struct TextFieldView: View {
    
    @Binding var text: String
    
    var body: some View {
        
        TextField("", text: $text)
            .frame(height: 40)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.purple,lineWidth:1)
            )
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(text: .constant("test"))
    }
}
