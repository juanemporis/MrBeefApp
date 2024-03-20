//
//  LogoView.swift
//  MrBeefApp
//
//  Created by macbook on 3/15/24.
//

import SwiftUI

struct LogoView: View {
    
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: ContentMode.fit)
            .clipShape(Circle())
    }
}


struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView(image: "logo.mrbeef")
    }
}
