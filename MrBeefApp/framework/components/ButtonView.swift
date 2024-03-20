//
//  ButtonView.swift
//  MrBeefApp
//
//  Created by macbook on 3/15/24.
//

import SwiftUI

struct ButtonView: View {
    
    var text: String
    var closure: () -> Void
    
    var body: some View {
        Button(action: {
            closure()
        }, label: {
            Text(text)
        })
        .frame(height: 44)
        .padding(.horizontal)
        .foregroundColor(Color.white)
        .bold()
        .background(.purple)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.purple,lineWidth:10)
        )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(text: "default text") {
            
        }
    }
}
