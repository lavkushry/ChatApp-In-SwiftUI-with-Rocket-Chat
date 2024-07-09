//
//  ChatRoomListView.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import Foundation
import SwiftUI

struct ChatRoomListView: View {
    @ObservedObject var viewModel = ChatRoomViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.chatRooms) { chatRoom in
                NavigationLink(destination: ChatView()) {
                    ChatRoomRow(chatRoom: chatRoom)
                }
            }
            .navigationTitle("Chat Rooms")
            .onAppear {
                viewModel.fetchChatRooms()
            }
        }
    }
}
