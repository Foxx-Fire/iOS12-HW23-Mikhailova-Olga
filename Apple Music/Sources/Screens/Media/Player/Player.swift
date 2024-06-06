//
//  Player.swift
//  Apple Music
//
//  Created by FoxxFire on 24.05.2024.
//

import SwiftUI

enum Metric {
    static var playerHeight: CGFloat = 70
    static var screenHeight = UIScreen.main.bounds.height
}

struct Player: View {
    var backRecColor = #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)
    var backStackColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    private var isPreview: Bool = true
    @ObservedObject var songAppear = PlayerModel(song: Songs.getData)
    @State private var value: Double = 0.0
    @State private var isEditing: Bool = false
    @Binding var expand: Bool
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var playerManager: PlayerManager
    
    let timer = Timer
        .publish(every: 0.5, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        HStack(alignment: .top) {
            ZStack {
                
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color(backRecColor))
                        .frame(maxHeight: expand ? .infinity : Metric.playerHeight)
                        .shadow(radius: 3, x: 3, y: 3)
                        .opacity(0.7)
                if let player = playerManager.player {
                    Image(player.isPlaying ? songAppear.song.image : "notepng.png")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 56, height: 56)
                        .cornerRadius(12)
                }
            }
            
            .padding(10)
            
         HStack {
                if let player = playerManager.player {
                    VStack(spacing: 5) {
                        Text(player.isPlaying ? songAppear.song.track : "Не исполняется")
                            .font(.system(size: 18))
                        Slider(value: $value, in: 0...player.duration ) { editing in
                            isEditing = editing
                            if !editing {
                                player.currentTime = value
                            }
                        }
                        .accentColor(.gray)
                    }
                
                Spacer()
                
                    Button {
                        playerManager.playPause()
                    } label: {
                        Image(systemName: player.isPlaying ? "pause.fill" : "play.fill")
                            .foregroundColor(Color.gray)
                            .padding()
                    }
                    
                    Button {
                        playerManager.stop()
                        dismiss()
                    } label: {
                        Image(systemName: "stop.fill")
                            .foregroundColor(Color.gray)
                    }
                } //  if
            } // HStack
            .padding()
        } // HStack
        .background(Color(backStackColor))
        .onAppear{
            playerManager.startPlay(music: songAppear.song.track, isPerview: isPreview)
        }
        .onReceive(timer) { _ in
            guard let player = playerManager.player, !isEditing else { return }
            value = player.currentTime
        }
        
        .onTapGesture(count: 1) {
            withAnimation(.spring()){
                expand.toggle()
            }
        }
    }
    
    
}

//#Preview {
//    Player(expand: $expand)
//        .environmentObject(PlayerManager())
//}
