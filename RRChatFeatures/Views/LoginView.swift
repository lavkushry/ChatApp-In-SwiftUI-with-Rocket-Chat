//
//  LoginView.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel = AuthViewModel()
    
    var body: some View {
        VStack {
            Button("Login with GitHub") {
                viewModel.authenticate()
            }
        }
    }
}
