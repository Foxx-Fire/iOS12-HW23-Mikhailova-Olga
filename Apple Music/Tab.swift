//
//  Tab.swift
//  Apple Music
//
//  Created by FoxxFire on 17.05.2024.
//

import SwiftUI

struct Tab: View {
    var backStackColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    var body: some View {
        
        TabView() {
            Media()
                .tabItem {
                    Label("Медиатека", systemImage: "music.note.house.fill")
                }
            Radio()
                .tabItem {
                    Label("Радио", systemImage: "dot.radiowaves.left.and.right")
                }
            Search()
                .tabItem {
                    Label("Поиск", systemImage: "magnifyingglass")
                }
        }
        .accentColor(Color.red)
//        .onAppear() {
//            UITabBar.appearance().backgroundColor = backStackColor
//            UITabBar.appearance().shadowImage = UIImage(named: "tab-shadow")?.withRenderingMode(.alwaysTemplate)
//            UITabBar.appearance().backgroundColor = UIColor.darkGray
//        }
    }
}

#Preview {
    Tab()
}
