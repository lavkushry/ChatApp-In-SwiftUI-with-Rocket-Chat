//
//  Helpers.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import Foundation

struct Helpers {
    static func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}
