//
//  SettingsSheetView.swift
//  MovieGenreFilter
//
//  Created by Lithika Damnod on 5/10/26.
//

import SwiftUI

struct SettingsSheetView: View {
    @Environment(UserPreferences.self) private var preferences
    @Environment(\.dismiss) private var dismiss
    
    @State private var draftDisplayName = ""
    
    var body: some View {
        @Bindable var preferences = preferences
        
        NavigationStack {
            Form {
                Section("Profile") {
                    TextField("Display Name", text: $draftDisplayName)
                }
                
                Section("Appearance") {
                    Picker("Theme", selection: $preferences.colorSchemePreference)  {
                        ForEach(UserPreferences.ColorSchemePreference.allCases, id: \.self) { mode in
                            Label(mode.rawValue, systemImage: mode.icon).tag(mode)
                        }
                    }
                    .pickerStyle(.segmented)
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear(perform: { draftDisplayName = preferences.displayName })
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") { dismiss() }
                        .foregroundStyle(.red)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        preferences.displayName = draftDisplayName
                        dismiss()
                    }
                    .fontWeight(.bold)
                }
            
                
            }
        }
    }
}

#Preview {
    SettingsSheetView()
        .environment(UserPreferences())
}
