//
//  ThemeViewModel.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//
import SwiftUI

class ThemeViewModel: ObservableObject {
    @Published var currentTheme: Theme = .light
    
    enum Theme: String {
        case light = "light"
        case dark = "dark"
        case black = "black"
    }
    
    func setTheme(_ theme: Theme) {
        currentTheme = theme
        // Logic to persist theme choice
    }
}
