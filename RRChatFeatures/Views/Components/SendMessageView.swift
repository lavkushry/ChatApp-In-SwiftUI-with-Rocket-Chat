//
//  SendMessageView.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import Foundation
import SwiftUI

struct SendMessageView: View {
    @Binding var text: String
    var onSend: () -> Void
    
    var body: some View {
        HStack {
            TextField("Enter message", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: onSend) {
                Text("Send")
            }
            .padding()
        }
        .padding()
    }
}
