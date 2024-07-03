//
//  ProductItem.swift
//  SwiftUIApp
//
//  Created by Nurgali on 02.07.2024.
//

import SwiftUI

struct ProductItem: View {
    var object: ProductsResponse
    var body: some View {
        VStack {
            Image(object.image)
                .resizable()
                .frame(width: 170, height: 170)
        }.padding(.leading, 15)
    }
}

#Preview {
    ProductItem(object: materialResponse[0])
}
