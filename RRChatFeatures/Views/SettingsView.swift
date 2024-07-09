//
//  SettingsView.swift
//  RRChatFeatures
//
//  Created by Lavkush kumar on 09/07/24.
//

import Foundation
import SwiftUI

struct SettingsView: View {
    @ObservedObject var viewModel = ThemeViewModel()
    
    var body: some View {
        Form {
            Section(header: Text("Theme")) {
                Picker("Theme", selection: $viewModel.currentTheme) {
                    Text("Light").tag(ThemeViewModel.Theme.light)
                    Text("Dark").tag(ThemeViewModel.Theme.dark)
                    Text("Black").tag(ThemeViewModel.Theme.black)
                }
                .pickerStyle(SegmentedPickerStyle())
            }
        }
        .navigationTitle("Settings")
    }
}
