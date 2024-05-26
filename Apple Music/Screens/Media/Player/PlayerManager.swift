//
//  PlayerManager.swift
//  Apple Music
//
//  Created by FoxxFire on 26.05.2024.
//

import Foundation
import AVKit

final class PlayerManager {
    static let shared = PlayerManager()
    var player: AVAudioPlayer?
    
    func startPlay(music: String) {
        guard let url = Bundle.main.url(forResource: music, withExtension: "mp3") else {
            print("Not found: \(music)")
            return
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
           print("Can't initialize", error)
        }
    }
}
