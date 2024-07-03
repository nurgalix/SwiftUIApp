//
//  WebinarRow.swift
//  SwiftUIApp
//
//  Created by Nurgali on 03.07.2024.
//

import SwiftUI

struct WebinarRow: View {
    var categoryName: String
    var items: [ProductsResponse]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 0) {
                    ForEach(self.items, id: \.name) { object in
                        NavigationLink(destination: DetailScreen(object: object)) {
                            WebinarItem(object: object)
                                .padding(.bottom, 10)
                                .padding(.leading, 10)
                        }
                    }
                }
            }
            .frame(height: 210)
        }
    }
}

#Preview {
    WebinarRow(categoryName: "Webinars", items: Array(materialResponse.dropFirst(4)))
}
