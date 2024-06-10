//
//  ContentView.swift
//  Apple Music
//
//  Created by FoxxFire on 17.05.2024.
// https://www.youtube.com/watch?v=DLj9yM-zLyc
// https://www.swiftyplace.com/blog/tabview-in-swiftui-styling-navigation-and-more
// https://habr.com/ru/articles/811433/
// https://www.youtube.com/watch?v=GBkf5arRZIQ

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
 
                Tab()

        }
    }
}

#Preview {
    LibraryView()
        .environmentObject(PlayerManager())
}
