//
//  MediaFunctionality.swift
//  Apple Music
//
//  Created by FoxxFire on 23.05.2024.
//

import Foundation

class MediaFunctionality: ObservableObject {
    @Published var medias = [MediaModel]()
    
    func isChosedMediaItem(media: MediaModel) {
        guard let index = medias.firstIndex(of: media) else { return }
        medias[index].isChoosed.toggle()
    }
}
