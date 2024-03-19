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
        .foregroundColor(Color.white)
        .bold()
        .frame(width: 350,height: 36)
        .background(.purple)
//        .background(
//            LinearGradient(colors: [.morado.opacity(0.6),.blanco.opacity(0.2),.morado.opacity(0.6)], startPoint: .leading, endPoint: .trailing)
//        )
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.purple,lineWidth:10)
        )
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(text: ""){
            debugPrint("Iniciando Sesión")
        }
    }
}
