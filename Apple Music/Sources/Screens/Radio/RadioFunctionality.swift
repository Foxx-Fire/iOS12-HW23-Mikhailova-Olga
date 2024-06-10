//
//  RadioFunctionality.swift
//  Apple Music
//
//  Created by FoxxFire on 10.06.2024.
//

import Foundation

final class RadioFunctionality: ObservableObject {
    @Published var radio:[RadioModel]
    
    init(radio: [RadioModel]) {
        self.radio = radio
    }
    
    func isChosedRadio(radio: RadioModel) {
        guard let index = radio.firstIndex(of: radio) else { return }
        radio[index].isChoosed.toggle()
    }
}
