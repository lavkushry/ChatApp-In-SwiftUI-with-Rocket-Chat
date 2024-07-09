//
//  ThemePickerView.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import Foundation
import SwiftUI

struct ThemePickerView: View {
    @Binding var selectedTheme: ThemeViewModel.Theme
    
    var body: some View {
        Picker("Theme", selection: $selectedTheme) {
            Text("Light").tag(ThemeViewModel.Theme.light)
            Text("Dark").tag(ThemeViewModel.Theme.dark)
            Text("Black").tag(ThemeViewModel.Theme.black)
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}
