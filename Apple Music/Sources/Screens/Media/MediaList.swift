//
//  MediaList.swift
//  Apple Music
//
//  Created by FoxxFire on 20.05.2024.
//

import SwiftUI

struct MediaList: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var functionsMedia = MediaFunctionality(medias: MediaModel.getMedia())
    
    var body: some View {
        NavigationStack {
            
            List {
                ForEach(functionsMedia.medias) { item in
                    HStack {
                        Button {
                            functionsMedia.isChosedMediaItem(media: item)
                        } label: {
                            if item.isChoosed {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundStyle(Color.red)
                            } else {
                                Image(systemName: "circle")
                            }
                        }
                        Image(systemName: item.logo)
                            .foregroundStyle(Color.red)
                            .frame(width: 20, height: 20)
                        Text(item.name)
                            .padding(7)
                    }
                }
                .onMove(perform: move)
            }
            .listStyle(InsetListStyle())
            // .navigationTitle("Медиатека")
            .environment(\.editMode, Binding.constant(EditMode.active))
            .toolbar {
                //  ToolbarItem(placement: .navigationBarTrailing) {
                //                    Button(action: {
                //                        dismiss()
                //                    }, label: {
                //                        Text("Готово")
                //                    })
                //                    .foregroundStyle(Color.red)
                //  } // ToolbarItem
                
                NavigationLink { }
            label: {
                Button {
                    dismiss()
                } label: {
                    Text("Готово")
               }
            }
        }
            .navigationBarBackButtonHidden(true)
    }
}
    
    func move(from source: IndexSet, to destination: Int ) {
        functionsMedia.medias.move(fromOffsets: source, toOffset: destination)
    }
}


#Preview {
    MediaList()
}
