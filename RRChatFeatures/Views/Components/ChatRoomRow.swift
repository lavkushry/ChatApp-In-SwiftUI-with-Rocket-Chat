//
//  ChatRoomRow.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import Foundation
import SwiftUI

struct ChatRoomRow: View {
    var chatRoom: ChatRoom
    
    var body: some View {
        HStack {
            Text(chatRoom.name)
                .font(.headline)
            Spacer()
        }
        .padding()
    }
}
