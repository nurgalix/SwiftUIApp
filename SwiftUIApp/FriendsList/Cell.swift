//
//  Cell.swift
//  SwiftUIApp
//
//  Created by Nurgali on 01.07.2024.
//

import SwiftUI

struct Cell: View {
    
    var user: UserResponse
    
    var body: some View {
        
        VStack(spacing: 16.0) {
            TopView(user: user)
            Text(user.text)
        }
        .padding()
    }
}

#Preview {
    Cell(user: userResponse[0])
}
