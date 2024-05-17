//
//  Tab.swift
//  Apple Music
//
//  Created by FoxxFire on 17.05.2024.
//

import SwiftUI

struct Media: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

struct Radio: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

struct Search: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

struct Tab: View {
    var body: some View {
        TabView {
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
    }
}

#Preview {
    Tab()
}
