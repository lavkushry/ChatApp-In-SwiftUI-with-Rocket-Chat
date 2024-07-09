//
//  ChatViewModel.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import Foundation
import SwiftUI
import Combine

class ChatViewModel: ObservableObject {
    @Published var messages: [Message] = []
    private var webSocketService = WebSocketService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        webSocketService.receiveMessages { [weak self] result in
            switch result {
            case .success(let text):
                DispatchQueue.main.async {
                    self?.messages.append(Message(text: text, sender: User(name: "User")))
                }
            case .failure(let error):
                print("Error receiving message: \(error)")
            }
        }
    }
    
    func sendMessage(_ text: String) {
        webSocketService.sendMessage(text) { error in
            if let error = error {
                print("Error sending message: \(error)")
            }
        }
    }
}
