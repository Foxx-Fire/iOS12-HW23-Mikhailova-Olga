//
//  PlayerManager.swift
//  Apple Music
//
//  Created by FoxxFire on 26.05.2024.
//

import Foundation
import AVKit

final class PlayerManager: ObservableObject {
    var player: AVAudioPlayer?
    
    func startPlay(music: String, isPerview: Bool = false) {
        guard let url = Bundle.main.url(forResource: music, withExtension: "mp3") else {
            print("Not found: \(music)")
            return
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            player = try AVAudioPlayer(contentsOf: url)
            if isPerview {
                player?.prepareToPlay()
            } else {
                player?.play()
            }
        } catch {
            print("Can't initialize", error)
        }
    }
    
    func playPause() {
        guard let player = player else { return }
        
        if player.isPlaying {
            player.pause()
        } else {
            player.play()
        }
    }
    
    func stop() {
        guard let player = player else { return }
        
        if player.isPlaying {
            player.stop()
        }
    }
}
