//
//  TopView.swift
//  SwiftUIApp
//
//  Created by Nurgali on 01.07.2024.
//

import SwiftUI

struct TopView: View {
    
    var user: UserResponse
    
    var body: some View {
        HStack (spacing: 8) {
            Image(user.profileImage)
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            VStack (alignment: .leading, spacing: 4)  {
                Text(user.name)
                    .font(.title)
                HStack {
                    Text(user.email)
                        .font(.subheadline)
                    Spacer()
                    Image("like")
                    Text(user.likes)
                        .font(.subheadline)
                }
            }
        }
    }
}

#Preview {
    TopView(user: userResponse[2])
}
