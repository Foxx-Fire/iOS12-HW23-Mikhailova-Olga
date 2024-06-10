//
//  Radio.swift
//  Apple Music
//
//  Created by FoxxFire on 17.05.2024.
//

import SwiftUI

struct RadioChapter: View {
    var radio: RadioModel
    let rows = [
        GridItem(.flexible(minimum: 500, maximum: 800))
    ]
    var body: some View {
        NavigationStack {
            ScrollView(.horizontal,
                       showsIndicators: false) {
                LazyHGrid(rows: rows, spacing: 10) {
                    ForEach(radio.)
                }
            }
            
        }
        .navigationTitle("Радио")
    }
}

#Preview {
    RadioChapter()
}
