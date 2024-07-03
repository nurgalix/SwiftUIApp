//
//  WebinarItem.swift
//  SwiftUIApp
//
//  Created by Nurgali on 03.07.2024.
//

import SwiftUI

struct WebinarItem: View {
    var object: ProductsResponse
    
    var body: some View {
        FeaturedLandmarks(object: object)
            .listRowInsets(EdgeInsets())
    }
}

struct FeaturedLandmarks: View {
    
    var object: ProductsResponse
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(object.image)
                .resizable()
                .renderingMode(.original)
                .cornerRadius(10)
                .frame(width: 170, height: 190)
        }.padding(.leading, 15)
    }
}



#Preview {
    WebinarItem(object: materialResponse[4])
}
