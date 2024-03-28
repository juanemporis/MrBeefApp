//
//  DeleteButtonView.swift
//  MrBeefApp
//
//  Created by macbook on 27/03/24.
//

import SwiftUI

struct DeleteButtonView: View {
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
        .background(.red)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.red,lineWidth:10)
        )
    }
}

#Preview {
    DeleteButtonView(text: "default"){
        
    }
}
