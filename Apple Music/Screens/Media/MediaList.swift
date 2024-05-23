//
//  MediaList.swift
//  Apple Music
//
//  Created by FoxxFire on 20.05.2024.
//

import SwiftUI

struct MediaList: View {
    var itemsMedia = MediaModel.getMedia()
    @ObservedObject var functionsMedia = MediaFunctionality()
    
    var body: some View {
        NavigationStack {
            List(itemsMedia) { item in
                HStack {
                    Button {
                        functionsMedia.isChosedMediaItem(media: item)
                    } label: {
                        if item.isChoosed {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundStyle(Color.red)
                        } else {
                            Image(systemName: "circle")
                        }
                    }
                    Image(systemName: item.logo)
                        .foregroundStyle(Color.red)
                        .frame(width: 20, height: 20)
                   // NavigationLink(item.name, value: item)
                    Text(item.name)
                        .padding(10)
                }
            }
            .listStyle(InsetListStyle())
//            .navigationDestination(for: MediaModel.self) { media in
//                MediaDetails()
           // }
        }
    }
}

#Preview {
    MediaList()
}
