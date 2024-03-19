//
//  DeleteButtonView.swift
//  MrBeefApp
//
//  Created by macbook on 3/18/24.
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
        .foregroundColor(Color.white)
        .bold()
        .frame(width: 100,height: 36)
        .background(.red)
        

        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.red,lineWidth:10)
        )
    }
}

struct DeleteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        DeleteButtonView(text: ""){
            debugPrint("Se elimino")
        }
    }
}
