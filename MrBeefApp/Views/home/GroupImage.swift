//
//  GroupImage.swift
//  MrBeefApp
//
//  Created by macbook on 3/16/24.
//

import SwiftUI

struct GroupImage: View {
    let imageNames = ["hamburguesa","hamburguesa","hamburguesa","hamburguesa"]
    let captions = ["MR.BEEF","Roys Chicken","Sao Yien","Pollo Loco"]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ForEach(0..<imageNames.count) { index in
                    VStack {
                        Image(self.imageNames[index])
                            .resizable()
                            .cornerRadius(15)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 400, height: 200)
                            
                        
                        Text(self.captions[index])
                            .font(.headline)
                            .foregroundColor(.gray)
                            
                    }
                    if index < self.imageNames.count - 1 {
                        Divider()
                        
                    }
                }
                .padding()
            }
        }
    }
    
}
struct GroupImage_Previews: PreviewProvider {
    static var previews: some View {
        GroupImage()
    }
}
