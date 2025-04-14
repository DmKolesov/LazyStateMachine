//
//  SettingView.swift
//  LazyStateMachine
//
//  Created by Dima Kolesov on 15.04.2025.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section("Account") {
                    NavigationLink(destination: EmptyView()) {
                        Label("Apple ID", systemImage: "person.crop.circle")
                    }
                    
                    NavigationLink(destination: EmptyView()) {
                        Label("iCloud", systemImage: "cloud")
                    }
                }
                
                Section("Preferences") {
                    Toggle("Dark Mode", isOn: .constant(false))
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
