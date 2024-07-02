//
//  UserResponse.swift
//  SwiftUIApp
//
//  Created by Nurgali on 01.07.2024.
//

import Foundation
import UIKit
import SwiftUI

struct UserResponse: Hashable, Codable, Identifiable {
    var id: Int
    
    var name: String
    var profileImage: String
    var email: String
    var likes: String
    var text: String
}

