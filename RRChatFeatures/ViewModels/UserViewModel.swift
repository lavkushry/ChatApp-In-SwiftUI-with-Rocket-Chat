//
//  UserViewModel.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import Foundation
import SwiftUI

class UserViewModel: ObservableObject {
    @Published var user: User
    
    init(user: User) {
        self.user = user
    }
    
    func updateUser(name: String, avatarURL: URL?) {
        user.name = name
        user.avatarURL = avatarURL
        // Additional logic to update user profile
    }
}
