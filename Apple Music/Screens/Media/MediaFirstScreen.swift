//
//  Media.swift
//  Apple Music
//
//  Created by FoxxFire on 17.05.2024.
//

import SwiftUI

struct MediaFirstScreen: View {
    var backRecColor = #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)
    @State var showAddView = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                VStack(alignment: .center) {
                    Text("Ищете свою музыку?")
                        .bold()
                        .font(.system(size: 26))
                    VStack {
                        Text("Здесь появится купленная вами в")
                        Text("iTunes Store музыка.")
                    }
                    .font(.system(size: 20))
                    .foregroundStyle(Color.gray)
                }
                .padding()
                Spacer()

            }
        }
    }
}


#Preview {
    MediaFirstScreen()
}
