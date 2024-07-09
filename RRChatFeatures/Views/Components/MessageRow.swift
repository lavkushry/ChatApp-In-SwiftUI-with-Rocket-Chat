//
//  MessageRow.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//
import Foundation
import SwiftUI

struct MessageRow: View {
    var message: Message
    
    var body: some View {
        HStack {
            if let url = message.sender.avatarURL {
                AsyncImage(url: url) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            }
            VStack(alignment: .leading) {
                Text(message.sender.name)
                    .font(.headline)
                Text(message.text)
                    .font(.body)
            }
        }
        .padding()
    }
}

