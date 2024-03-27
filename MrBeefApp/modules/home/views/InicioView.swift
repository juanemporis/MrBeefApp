//
//  InicioView.swift
//  MrBeefApp
//
//  Created by williams on 20/03/24.
//

import SwiftUI

struct InicioView: View {
    var body: some View {
        VStack {
            SearchAndFilterBar(searchText: .constant(""))
                .padding()
            StoresView()
        }
    }
}

struct InicioView_Previews: PreviewProvider {
    static var previews: some View {
        InicioView()
    }
}
