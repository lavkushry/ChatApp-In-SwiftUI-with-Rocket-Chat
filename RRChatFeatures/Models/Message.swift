//
//  Message.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: UUID = UUID()
    var text: String
    var sender: User
    var timestamp: Date = Date()
}

struct User: Identifiable, Codable {
    var id: UUID = UUID()
    var name: String
    var avatarURL: URL?
}

struct ChatRoom: Identifiable, Codable {
    var id: UUID = UUID()
    var name: String
    var messages: [Message]
}
