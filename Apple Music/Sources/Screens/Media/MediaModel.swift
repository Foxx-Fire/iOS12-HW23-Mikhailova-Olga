//
//  MediaModel.swift
//  Apple Music
//
//  Created by FoxxFire on 21.05.2024.
//

import Foundation

struct MediaModel: Identifiable, Hashable {
    var id = UUID()
    var logo: String
    var name: String
    var isChoosed: Bool = false
    
    static func getMedia() -> [MediaModel] {
        [
            MediaModel(logo: "music.note.list", name: "Плейлисты" ),
            MediaModel(logo: "music.mic", name: "Артисты"),
            MediaModel(logo: "square.stack", name: "Альбомы"),
            MediaModel(logo: "music.note", name: "Песни"),
            MediaModel(logo: "tv.badge.wifi", name: "Телешоу и фильмы"),
            MediaModel(logo: "tv.music.note", name: "Видеоклипы"),
            MediaModel(logo: "guitars", name: "Жанры"),
            MediaModel(logo: "person.2.crop.square.stack", name: "Сборники"),
            MediaModel(logo: "music.quarternote.3", name: "Авторы"),
            MediaModel(logo: "arrow.down.circle", name: "Загружено"),
            MediaModel(logo: "house", name: " Домашняя колекция")
        ]
    }
}
