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
    let title: String
    let duration: TimeInterval
    let track: String
    let image: String
    
    static var data = Songs(title: "Enjoy", duration: 70, track: "", image: "LZ")
}
// Led Zeppelin \"Kashmir\"
