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
            .foregroundColor(Color.black)
            .frame(width: 230,height: 36)
            .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.purple,lineWidth:1)
            )
            .padding(.horizontal, 20)
            .foregroundColor(text.isEmpty ? .clear: .black)
            .onChange(of: text) { newValue in
                if text.isEmpty {
                    text = "hi"
                }
            }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
