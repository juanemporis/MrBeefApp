//
//  GroupImage.swift
//  MrBeefApp
//
//  Created by macbook on 3/16/24.
//

import SwiftUI

struct ProductosView: View {
    
    let imageNames = ["hamburguesa","hamburguesa","hamburguesa","hamburguesa"]
    let captions = ["MR.BEEF","Roys Chicken","Sao Yien","Pollo Loco"]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ForEach( 0..<4 ) { index in
                    VStack {
                        Image(self.imageNames[index])
                            .resizable()
                            .cornerRadius(10)
                            .aspectRatio(contentMode: .fit)
                        
                        Text(self.captions[index])
                            .font(.headline)
                            .foregroundColor(.gray)
                    }
                }
                .padding(.top)
                .padding(.horizontal)
            }
        }
    }
    
}
struct ProductosView_Previews: PreviewProvider {
    static var previews: some View {
        ProductosView()
    }
}
