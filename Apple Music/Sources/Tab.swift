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
    @State var expand = false
    
    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationStack {
                MediaFirstScreen()
               // Player(expand: $expand)
                    .navigationTitle(selectedTab.rawValue)
                    .toolbar {
//                        ToolbarItem(placement: .navigationBarTrailing) {
//                            Button("Править", action: { showAddView = true; MediaList() })
//                                .foregroundStyle(Color.red)
//                                
//                                .fullScreenCover(isPresented: $showAddView, content: { MediaList() })
//                        }
                        
                        NavigationLink {
                            MediaList()
                                .navigationTitle("Медиатека")
                               // .tag(Tabs.media)
                        } label: {
                            Text("Править")
                        }
                    }
            }
            .tabItem {
                Label("Медиатека", systemImage: "music.note.house.fill")
                  //  .tag(Tabs.media)
            }
           
            //MARK: Radio()
            
            NavigationStack {
                Radio()
                    .navigationTitle(selectedTab.rawValue)
            }
            .tabItem {
                Label("Радио", systemImage: "dot.radiowaves.left.and.right")
                    .tag(Tabs.radio)
            }
            
            //MARK: Search()
            
            NavigationStack {
                Search()
                    .navigationTitle(selectedTab.rawValue)
            }
            .tabItem {
                Label("Поиск", systemImage: "magnifyingglass")
                    .tag(Tabs.search)
            }
        }
        .safeAreaInset(edge: .bottom) {
            Player(expand: $expand)
        }
        .accentColor(Color.red)
        .onAppear() {
            let appearance = UITabBarAppearance()
            appearance.shadowColor = .black
            appearance.backgroundColor = backStackColor
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

#Preview {
    Tab()
        .environmentObject(PlayerManager())
}
