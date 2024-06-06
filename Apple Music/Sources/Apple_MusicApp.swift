//
//  Apple_MusicApp.swift
//  Apple Music
//
//  Created by FoxxFire on 17.05.2024.
//

import SwiftUI

@main
struct Apple_MusicApp: App {
    @StateObject var playerManager = PlayerManager()
    var body: some Scene {
        WindowGroup {
            LibraryView()
                .environmentObject(playerManager)
        }
    }
}