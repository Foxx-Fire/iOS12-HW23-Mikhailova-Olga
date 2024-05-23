//
//  Media.swift
//  Apple Music
//
//  Created by FoxxFire on 17.05.2024.
//

import SwiftUI

struct Media: View {
    var backRecColor = #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)
    var backStackColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    var notesColor = #colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1)
    @State var showAddView = false
    
    var body: some View {
        NavigationView {
           
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
                
            
                    HStack(alignment: .bottom) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color(backRecColor))
                                .frame(width: 50, height: 50)
                                .shadow(radius: 3, x: 3, y: 3)
                                .opacity(0.4)
                            Image("notes")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundStyle(Color.black)
                            // .background(Color.red)
                            
                            
                        }
                        .padding()
                        
                        HStack {
                            Text("Не исполняется")
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
            }
            .navigationTitle("Медиатека")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                Button("Править", action: { showAddView = true })
                        .foregroundStyle(Color.red)
                    // You can also use .toggle() instead of = true
                        
                    .fullScreenCover(isPresented: $showAddView, content: { MediaList() })
            }
                
                 }
             //  .padding(.init(top: 0, leading: 0, bottom: 90, trailing: 16))

        }
        
    }
    
}


#Preview {
    Media()
}
