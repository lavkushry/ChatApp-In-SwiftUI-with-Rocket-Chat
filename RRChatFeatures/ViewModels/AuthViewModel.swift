//
//  AuthViewModel.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import SwiftUI
import AuthenticationServices

class AuthViewModel: ObservableObject {
    @Published var isAuthenticated = false
    
    func authenticate() {
        let authURL = URL(string: "https://github.com/login/oauth/authorize?client_id=YOUR_CLIENT_ID")!
        let session = ASWebAuthenticationSession(url: authURL, callbackURLScheme: "yourapp") { callbackURL, error in
            guard let callbackURL = callbackURL, error == nil else {
                print("Error during authentication: \(String(describing: error))")
                return
            }
            // Handle callback URL to extract token
        }
        session.start()
    }
}
