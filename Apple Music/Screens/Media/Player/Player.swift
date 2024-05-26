//
//  Player.swift
//  Apple Music
//
//  Created by FoxxFire on 24.05.2024.
//

import SwiftUI

struct Player: View {
    var backRecColor = #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)
    var backStackColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    @ObservedObject var songAppear = PlayerModel(song: Songs.data)
    
    var body: some View {
        
        HStack(alignment: .bottom) {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color(backRecColor))
                    .frame(width: 50, height: 50)
                    .shadow(radius: 3, x: 3, y: 3)
                    .opacity(0.7)
                Image(songAppear.song.image)
                    .resizable()
                    .frame(width: 35, height: 35)
                    .foregroundStyle(Color.black)
                    .clipShape(.rect(cornerRadius: 6))
            }
            .padding()
            
            HStack {
                Text(songAppear.song.track)
                    .font(.system(size: 18))
                Spacer()
                Image(systemName: "play.fill")
                    .padding()
                Image(systemName: "forward.fill")
                    .foregroundColor(Color.gray)
            }
            .padding()
            
        }
        .background(Color(backStackColor))
        .onAppear{
            PlayerManager.shared.startPlay(music: songAppear.song.track)
        }
    }
       
}

#Preview {
    Player()
}
