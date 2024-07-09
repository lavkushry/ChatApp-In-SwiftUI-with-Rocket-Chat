//
//  ThemeService.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import Foundation

class ThemeService {
    func saveTheme(_ theme: ThemeViewModel.Theme) {
        UserDefaults.standard.set(theme.rawValue, forKey: "selectedTheme")
    }
    
    func loadTheme() -> ThemeViewModel.Theme {
        let rawValue = UserDefaults.standard.string(forKey: "selectedTheme") ?? "light"
        return ThemeViewModel.Theme(rawValue: rawValue) ?? .light
    }
}
