//
//  Tab.swift
//  Apple Music
//
//  Created by FoxxFire on 17.05.2024.
//


// https://www.youtube.com/watch?v=J7yTsfsbRwc

import SwiftUI

enum Tabs: String {
    case media = "Медиатека"
    case radio = "Радио"
    case search = "Поиск"
}

struct Tab: View {
    var backStackColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    @State var selectedTab: Tabs = .media
    @State var showAddView = false
    @State var expand = false
    
    var body: some View {
        TabView{
            Group {
                NavigationStack {
                    MediaChapter()
                }
                .tabItem {
                    Label("Медиатека", systemImage: "music.note.house.fill")
                }
                NavigationStack {
                    Radio()
                }
                .tabItem {
                    Label("Радио", systemImage: "dot.radiowaves.left.and.right")
                }
                NavigationStack {
                    Search()
                }
                .tabItem {
                    Label("Поиск", systemImage: "magnifyingglass")
                }
            } // Group
            //                .toolbar {
            //                    ToolbarItem(placement: .bottomBar) {
            //                        Player()
            //                    }
            //                } //toolbar
        } // tabView
        .tint(Color.red)
        .safeAreaInset(edge: .bottom) {
            Player()
        }
        //        .onAppear() {
        //            let appearance = UITabBarAppearance()
        //            appearance.shadowColor = .black
        //            appearance.backgroundColor = backStackColor
        //            UITabBar.appearance().scrollEdgeAppearance = appearance
        //        }
        //        
        
        
        //                .safeAreaInset(edge: .bottom) {
        //                    Player()
        //                }
    }
}
    
 
#Preview {
    Tab()
        .environmentObject(PlayerManager())
}
