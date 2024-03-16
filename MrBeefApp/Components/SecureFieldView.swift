//
//  SecureFieldView.swift
//  MrBeefApp
//
//  Created by macbook on 3/15/24.
//

import SwiftUI

struct SecureFieldView: View {
    @State var secureText: String = ""
    
    var body: some View {
        
        SecureField("", text: $secureText)
            .foregroundColor(Color.white)
            .frame(width: 230,height: 36)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.purple,lineWidth:1)
            )
            .padding(.horizontal,20)
    }
}

struct SecureFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldView()
    }
}
