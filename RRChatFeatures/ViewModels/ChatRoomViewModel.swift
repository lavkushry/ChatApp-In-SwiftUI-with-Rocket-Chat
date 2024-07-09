//
//  ChatRoomViewModel.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import Foundation
import SwiftUI

class ChatRoomViewModel: ObservableObject {
    @Published var chatRooms: [ChatRoom] = []
    
    func fetchChatRooms() {
        // Logic to fetch chat rooms from a server
    }
    
    func addChatRoom(_ chatRoom: ChatRoom) {
        chatRooms.append(chatRoom)
        // Logic to add chat room to server
    }
}
