//
//  TextFieldView.swift
//  MrBeefApp
//
//  Created by macbook on 3/15/24.
//

import SwiftUI

struct TextFieldView: View {
    @State var text: String = ""
    
    var body: some View {
        
          TextField("", text: $text)
            .foregroundColor(Color.white)
            .frame(width: 230,height: 36)
            .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.purple,lineWidth:1)
            )
            .padding(.horizontal, 20)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
