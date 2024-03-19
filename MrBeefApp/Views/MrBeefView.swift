//
//  MrBeefView.swift
//  MrBeefApp
//
//  Created by macbook on 3/18/24.
//

import SwiftUI

struct MrBeefView: View {
    var body: some View {
        Image("fondo.beef")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 395, height: 350)
            
            .clipped()
            .padding(.top, 50)
    }
}

struct MrBeefView_Previews: PreviewProvider {
    static var previews: some View {
        MrBeefView()
    }
}
 
