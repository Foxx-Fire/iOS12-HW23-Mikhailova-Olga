//
//  PlayerModel.swift
//  Apple Music
//
//  Created by FoxxFire on 26.05.2024.
//

import Foundation

final class PlayerModel: ObservableObject {
    var song: Songs
    init(song: Songs) {
        self.song = song
    }
}

struct Songs {
    let id = UUID()
    let track: String
    let image: String
    
    static var getData = Songs(track: "Led Zeppelin-The Ocean", image: "LZ")
}

