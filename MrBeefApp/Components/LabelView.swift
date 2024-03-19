//
//  LabelView.swift
//  MrBeefApp
//
//  Created by macbook on 3/15/24.
//

import SwiftUI

struct LabelView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(Color.red)
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(text: "HOLA")
    }
}
