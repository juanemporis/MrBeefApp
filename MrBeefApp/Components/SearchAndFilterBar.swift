//
//  SearchAndFilterBar.swift
//  MrBeefApp
//
//  Created by macbook on 3/16/24.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        
            HStack{
                Image(systemName: "location.circle")
                    .foregroundStyle(.gray)
                
                VStack(alignment: .leading, spacing: 2){
                    Text("hello")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(.gray)
                    
                    Text("Anywere - Any Week - Add guests")
                        .font(.caption2)
                        .foregroundStyle(.gray)
                }
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                        .foregroundStyle(.gray)
                })
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
            .overlay{
                Capsule()
                    .stroke(Color.purple,lineWidth:1)
            }
            .padding()
    }

}

struct SearchAndFilterBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchAndFilterBar()
    }
}
