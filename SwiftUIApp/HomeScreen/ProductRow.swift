//
//  ProductRow.swift
//  SwiftUIApp
//
//  Created by Nurgali on 02.07.2024.
//

import SwiftUI

struct ProductRow: View {
    var categoryName: String
    var items: [ProductsResponse]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(self.categoryName).font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal) {
                HStack(alignment: .center, spacing: 0) {
                    ForEach(self.items) { item in
                        ProductItem(object: item)
                    }
                }
            }.frame(height: 190)
        }
    }
}

#Preview {
    ProductRow(categoryName: materialResponse[0].category.rawValue, items: Array(materialResponse.prefix(3)))
}
