//
//  UserProfileView.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import Foundation
import SwiftUI

struct UserProfileView: View {
    @ObservedObject var viewModel: UserViewModel
    
    var body: some View {
        VStack {
            if let url = viewModel.user.avatarURL {
                AsyncImage(url: url) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            }
            Text(viewModel.user.name)
                .font(.largeTitle)
        }
        .navigationTitle("Profile")
    }
}
