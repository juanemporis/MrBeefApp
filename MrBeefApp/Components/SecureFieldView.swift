//
//  SecureFieldView.swift
//  MrBeefApp
//
//  Created by macbook on 3/15/24.
//

import SwiftUI

struct SecureFieldView: View {
    
    @Binding var text: String
    
    var body: some View {
        
        SecureField("", text: $text)
            .frame(width: .infinity, height: 44)
            .padding(.horizontal)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.purple,lineWidth:1)
            )
    }
}

struct SecureFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldView(text: .constant("test"))
    }
}
