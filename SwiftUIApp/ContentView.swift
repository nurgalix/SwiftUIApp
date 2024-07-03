//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by Nurgali on 01.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    var categories: [String: [ProductsResponse]] {
        Dictionary(grouping: materialResponse, by: {$0.category.rawValue})
    }
    @State private var showConfirmationPopup = false
    
    var body: some View {
        
        NavigationView {
            List {
                Cell(user: swiftbook).listRowInsets(EdgeInsets())
                ForEach(self.categories.keys.sorted(), id: \.self) { key in
                    ProductRow(categoryName: key, items: self.categories[key]!)
                }.listRowInsets(EdgeInsets())
                
                NavigationLink(destination: FriendsList()) {
                    Button("Наши преподаватели") {
                        
                    }
                    .padding(.bottom, 10)
                    .padding(.leading, 10)
                }
               
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Homepage")
        }
    }
}

#Preview {
    ContentView()
}
