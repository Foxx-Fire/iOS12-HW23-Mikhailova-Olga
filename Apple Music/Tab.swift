//
//  Tab.swift
//  Apple Music
//
//  Created by FoxxFire on 17.05.2024.
//

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
    
    var body: some View {
            TabView(selection: $selectedTab) {
                NavigationStack {
                    MediaFirstScreen()
                    Player()
                        .navigationTitle(selectedTab.rawValue)
                        .toolbar {
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Button("Править", action: { showAddView = true })
                                    .foregroundStyle(Color.red)
                                
                                    .fullScreenCover(isPresented: $showAddView, content: { MediaList() })
                    }
                }
                }
                    .tabItem {
                        Label("Медиатека", systemImage: "music.note.house.fill")
                            .tag(Tabs.media)
                    }
                NavigationStack {
                    Radio()
                        .navigationTitle(selectedTab.rawValue)
                }
                    .tabItem {
                        Label("Радио", systemImage: "dot.radiowaves.left.and.right")
                            .tag(Tabs.radio)
                    }
                NavigationStack {
                    Search()
                        .navigationTitle(selectedTab.rawValue)
                }
                    .tabItem {
                        Label("Поиск", systemImage: "magnifyingglass")
                            .tag(Tabs.search)
                    }
            }
           
            .accentColor(Color.red)
            //        .onAppear() {
            //            UITabBar.appearance().backgroundColor = backStackColor
            //            UITabBar.appearance().shadowImage = UIImage(named: "tab-shadow")?.withRenderingMode(.alwaysTemplate)
            //            UITabBar.appearance().backgroundColor = UIColor.darkGray
            //  
    }
}

#Preview {
    Tab()
}
