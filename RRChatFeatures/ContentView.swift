//
//  ContentView.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State private var isAuthenticated = false
    
    var body: some View {
        if isAuthenticated {
            ChatRoomListView()
        }
        else {
            LoginView()
        }
    }
}


#Preview {
    ContentView()
}
