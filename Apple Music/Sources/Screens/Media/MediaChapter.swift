//
//  MediaChapter.swift
//  Apple Music
//
//  Created by FoxxFire on 06.06.2024.
//

import SwiftUI

struct MediaChapter: View {
    var body: some View {
        NavigationStack {
            MediaFirstScreen()
            
                .navigationTitle("Медиатека")
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
    }
}

#Preview {
    MediaChapter()
}
