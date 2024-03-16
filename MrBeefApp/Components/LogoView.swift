//
//  LogoView.swift
//  MrBeefApp
//
//  Created by macbook on 3/15/24.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Image("logo.mrbeef")
            .resizable()
            .aspectRatio(contentMode: ContentMode.fit)
            .frame(height:200)
            
    }
}


struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
