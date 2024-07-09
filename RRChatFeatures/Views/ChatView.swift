//
//  ChatView.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import Foundation
import SwiftUI

struct ChatView: View {
    @ObservedObject var viewModel = ChatViewModel()
    @State private var messageText: String = ""
    
    var body: some View {
        VStack {
            List(viewModel.messages) { message in
                MessageRow(message: message)
            }
            SendMessageView(text: $messageText, onSend: {
                viewModel.sendMessage(messageText)
                messageText = ""
            })
        }
        .navigationTitle("Chat")
    }
}
